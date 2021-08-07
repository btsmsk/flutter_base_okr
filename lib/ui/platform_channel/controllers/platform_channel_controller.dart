import 'package:flutter/services.dart';
import 'package:flutter_base_okr/data/models/test/bluetooth_device.dart';
import 'package:flutter_base_okr/utils/constants.dart';
import 'package:get/get.dart';

class PlatformChannelController extends GetxController with StateMixin {
  static const platform = MethodChannel(CHANNEL);

  @override
  void onReady() {
    super.onReady();
    getPairedBlueToothDevices();
  }

  Future getPairedBlueToothDevices() async {
    change([], status: RxStatus.loading());

    try {
      platform
          .invokeMethod(ChannelMethods().getPairedBluetoothDevices)
          .then((value) {
        final List<BlueToothDeviceModel> devices = [];
        value?.forEach((item) {
          devices.add(BlueToothDeviceModel.fromMap(item));
        });
        change(devices, status: RxStatus.success());
      });
    } on PlatformException catch (e) {
      final String message =
          ('${ChannelMethods().getPairedBluetoothDevices}==>${e.message}');
      change([], status: RxStatus.error(message));
    }
  }
}
