import 'package:flutter_base_okr/data/data_source/remote/launch/specific_launch_remote_data_source.dart';
import 'package:flutter_base_okr/data/data_source/remote/launch/upcoming_remote_data_source.dart';
import 'package:flutter_base_okr/data/repository/launches_repository.dart';
import 'package:flutter_base_okr/domain/usecase/launches/upcoming/get_upcoming_launches_use_case.dart';
import 'package:flutter_base_okr/ui/launches/controllers/launches_controller.dart';
import 'package:flutter_base_okr/ui/launches/views/upcoming/controllers/upcoming_controller.dart';
import 'package:get/get.dart';

class LaunchesBinding implements Bindings {
  @override
  void dependencies() {
    // Http Client
    Get.put<LaunchesController>(LaunchesController());
    Get.put<LaunchesRepository>(LaunchesRepository(
        upcomingRemoteDataSource:
        UpcomingRemoteDataSource(dioClient: Get.find()),
        specificLaunchRemoteDataSource: SpecificLaunchRemoteDataSource()));
    Get.lazyPut<GetUpcomingLaunchesUseCase>(
        () => GetUpcomingLaunchesUseCase(repository: Get.find()));
    Get.lazyPut<UpcomingController>(
        () => UpcomingController(upcomingLaunches: Get.find()));
  }
}
