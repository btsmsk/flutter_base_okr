import 'package:flutter_base_okr/data/data_source/remote/launch/specific_launch_remote_data_source.dart';
import 'package:flutter_base_okr/data/data_source/remote/launch/upcoming_remote_data_source.dart';
import 'package:flutter_base_okr/data/repository/launches_repository.dart';
import 'package:flutter_base_okr/domain/usecase/launches/specific_launch/get_specific_launch_use_case.dart';
import 'package:flutter_base_okr/ui/vehicle_detail/controllers/ship_detail_controller.dart';
import 'package:flutter_base_okr/ui/vehicle_detail/controllers/vehicle_detail_controller.dart';
import 'package:get/get.dart';

class VehicleDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VehicleDetailController>(() => VehicleDetailController());
    Get.put<LaunchesRepository>(LaunchesRepository(
        upcomingRemoteDataSource:
            UpcomingRemoteDataSource(dioClient: Get.find()),
        specificLaunchRemoteDataSource: SpecificLaunchRemoteDataSource()));
    Get.lazyPut<GetSpecificLaunchUseCase>(
        () => GetSpecificLaunchUseCase(repository: Get.find()));
    Get.lazyPut<ShipDetailController>(
        () => ShipDetailController(specificLaunchUseCase: Get.find()));
  }
}
