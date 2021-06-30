import 'package:flutter_base_okr/data/models/launches/launches.dart';
import 'package:flutter_base_okr/data/models/vehicle/rocket_vehicle.dart';
import 'package:flutter_base_okr/domain/usecase/launches/specific_launch/get_specific_launch_use_case.dart'
    as launch;
import 'package:flutter_base_okr/domain/usecase/vehicles/get_specific_rocket_use_case.dart'
    as rocket;
import 'package:get/get.dart';

class UpcomingDetailsController extends GetxController with StateMixin {
  launch.GetSpecificLaunchUseCase specificLaunchUseCase;
  rocket.GetSpecificRocketUseCase specificRocketUseCase;

  UpcomingDetailsController(
      {required this.specificLaunchUseCase,
      required this.specificRocketUseCase});

  Future getSpecificLaunch(String id) async {
    change([], status: RxStatus.loading());

    try {
      final launchResult =
          await specificLaunchUseCase.execute(launch.Params(id: id));
      final rocketResult =
          await specificRocketUseCase.execute(rocket.Params(id: launchResult.rocket ?? ''));
      change(LaunchDetailsUiModel(launch: launchResult, rocket: rocketResult),
          status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error(e.toString()));
    }
  }
}

class LaunchDetailsUiModel {
  Launches launch;
  RocketVehicle rocket;

  LaunchDetailsUiModel({required this.launch, required this.rocket});
}
