package com.flutterbase.flutter_base_okr

import android.bluetooth.BluetoothAdapter
import android.content.Intent
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val bluetoothAdapter = BluetoothAdapter.getDefaultAdapter()
    private lateinit var result: MethodChannel.Result

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            this.result = result
            when (call.method) {
                CALL_METHOD -> {
                    if (bluetoothAdapter?.isEnabled == true) {
                        checkPairedDevices(result)
                    } else {
                        startBluetoothEnableIntent()
                    }
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun checkPairedDevices(result: MethodChannel.Result) {
        val maps = arrayListOf<HashMap<String, String>>()
        val pairedDevices = bluetoothAdapter?.bondedDevices
        pairedDevices?.forEach {
            maps.add(
                hashMapOf(
                    "deviceName" to it.name,
                    "address" to it.address,
                    "alias" to it.alias.toString()
                )
            )
        }
        if (maps.isNotEmpty()) {
            result.success(maps)
        } else {
            result.error("UNAVAILABLE", "No paired devices!", null)
        }
    }

    private fun startBluetoothEnableIntent() {
        val enableBtIntent = Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE)
        startActivityForResult(enableBtIntent, REQUEST_ENABLE_BT)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        if (resultCode == RESULT_OK && requestCode == REQUEST_ENABLE_BT) {
            checkPairedDevices(result)
        }
    }

    companion object {
        const val CHANNEL = "flutter_base_okr/sample" // Unique Channel
        const val CALL_METHOD = "getPairedBluetoothDevices"
        const val REQUEST_ENABLE_BT = 9999
    }
}
