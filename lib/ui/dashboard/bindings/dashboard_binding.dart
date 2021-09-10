import 'package:flutter_base_okr/ui/company/bindings/company_binding.dart';
import 'package:flutter_base_okr/ui/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter_base_okr/ui/home/bindings/home_binding.dart';
import 'package:flutter_base_okr/ui/launches/bindings/launches_binding.dart';
import 'package:flutter_base_okr/ui/vehicles/bindings/vehicles_binding.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    // Dashboard
    Get.lazyPut<DashboardController>(
        () => DashboardController(localCacheRepository: Get.find()));
    // Home
    HomeBinding().dependencies();
    // Vehicles
    VehiclesBinding().dependencies();
    // Launches
    LaunchesBinding().dependencies();
    // Company
    CompanyBinding().dependencies();
  }
}
