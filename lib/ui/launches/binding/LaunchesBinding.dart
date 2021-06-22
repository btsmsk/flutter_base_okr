import 'package:flutter_base_okr/ui/launches/controller/launches_controller.dart';
import 'package:get/get.dart';

class LaunchesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LaunchesController());
  }
}
