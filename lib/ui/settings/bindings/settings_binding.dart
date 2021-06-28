import 'package:flutter_base_okr/ui/settings/controllers/settings_controller.dart';
import 'package:get/get.dart';

class SettingsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}
