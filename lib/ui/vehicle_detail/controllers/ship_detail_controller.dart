import 'package:flutter_base_okr/data/models/launches/launches.dart';
import 'package:flutter_base_okr/data/models/vehicle/ship_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicle/vehicle.dart';
import 'package:flutter_base_okr/domain/usecase/launches/specific_launch/get_specific_launch_use_case.dart'
as launch;
import 'package:get/get.dart';

class ShipDetailController extends GetxController with StateMixin {
  Vehicle vehicle = Get.arguments;
  launch.GetSpecificLaunchUseCase specificLaunchUseCase;

  ShipDetailController({required this.specificLaunchUseCase});

  List<Launches> launches = [];

  @override
  void onReady() {
    super.onReady();
    if ((vehicle as ShipVehicle).launches != null &&
        (vehicle as ShipVehicle).launches?.isNotEmpty == true) {
      (vehicle as ShipVehicle).launches!.forEach((element) {
        getSpecificLaunch(element);
      });
    }
  }

  Future getSpecificLaunch(String id) async {
    change([], status: RxStatus.loading());

    try {
      final launchResult =
      await specificLaunchUseCase.execute(launch.Params(id: id));
      launches.add(launchResult);
      change(launches, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error(e.toString()));
    }
  }
}
