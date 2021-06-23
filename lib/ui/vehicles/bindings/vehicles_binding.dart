import 'package:flutter_base_okr/ui/vehicles/controllers/vehicles_controller.dart';
import 'package:get/get.dart';

class VehiclesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VehiclesController());
  }
}