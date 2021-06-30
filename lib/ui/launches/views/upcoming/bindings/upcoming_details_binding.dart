import 'package:flutter_base_okr/domain/usecase/launches/specific_launch/get_specific_launch_use_case.dart';
import 'package:flutter_base_okr/domain/usecase/vehicles/get_specific_rocket_use_case.dart';
import 'package:flutter_base_okr/ui/launches/views/upcoming/controllers/upcoming_details_controller.dart';
import 'package:get/get.dart';

class UpcomingDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetSpecificLaunchUseCase>(
        () => GetSpecificLaunchUseCase(repository: Get.find()));
    Get.lazyPut<GetSpecificRocketUseCase>(
        () => GetSpecificRocketUseCase(repository: Get.find()));

    Get.lazyPut<UpcomingDetailsController>(() => UpcomingDetailsController(
        specificLaunchUseCase: Get.find(),
        specificRocketUseCase: Get.find()));
  }
}
