import 'package:flutter_base_okr/ui/vehicle_detail/controllers/vehicle_detail_controller.dart';
import 'package:get/get.dart';

class VehicleDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VehicleDetailController>(() => VehicleDetailController());
  }
}
