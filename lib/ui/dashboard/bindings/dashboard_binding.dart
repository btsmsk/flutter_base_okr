import 'package:flutter_base_okr/data/data_source/remote/vehicle/vehicle_remote_data_source.dart';
import 'package:flutter_base_okr/data/repository/vehicle_repository.dart';
import 'package:flutter_base_okr/domain/usecase/get_rockets.dart';
import 'package:flutter_base_okr/ui/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter_base_okr/ui/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<VehicleRepository>(() =>
        VehicleRepository(vehicleRemoteDataSource: VehicleRemoteDataSource()));
    Get.lazyPut<GetRocketsUseCase>(() => GetRocketsUseCase(Get.find()));
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
