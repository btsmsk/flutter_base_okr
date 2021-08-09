import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
        let channel = FlutterMethodChannel(name: "flutter_base_okr/sample",
                                                  binaryMessenger: controller.binaryMessenger)
    channel.setMethodCallHandler({
        [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
          guard call.method == "getPairedBluetoothDevices" else {
            result(FlutterMethodNotImplemented)
            return
          }
          self?.getPairedBluetoothDevices(result: result)
        })

        GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func getPairedBluetoothDevices(result: FlutterResult) {
        //TODO: Not implemented yet.
        let testDictionary: [[String: String]] = [["deviceName" : "Hello From IOS",
                                                "address" : "Test",
                                                "alias" : "Hello From IOS"]];
        result(testDictionary)
    }
}
