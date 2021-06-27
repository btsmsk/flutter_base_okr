
import 'package:flutter_base_okr/data/data_source/remote/upcoming/upcoming_remote_data_source.dart';
import 'package:flutter_base_okr/data/repository/launches_repository.dart';
import 'package:flutter_base_okr/domain/usecase/launches/upcoming/upcoming_launches_use_case.dart';
import 'package:flutter_base_okr/ui/launches/controllers/launches_controller.dart';
import 'package:flutter_base_okr/ui/launches/views/upcoming/controllers/upcoming_controller.dart';
import 'package:get/get.dart';

class LaunchesBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<LaunchesController>(LaunchesController());
    Get.lazyPut<LaunchesRepository>(() => LaunchesRepository(
        upcomingRemoteDataSource: UpcomingRemoteDataSource()));
    Get.lazyPut<UpcomingLaunchesUseCase>(
            () => UpcomingLaunchesUseCase(repository: Get.find()));
    Get.lazyPut<UpcomingController>(
            () => UpcomingController(upcomingLaunches: Get.find()));
  }
}