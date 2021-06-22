import 'package:flutter_base_okr/data/models/vehicles/vehicle.dart';
import 'package:flutter_base_okr/domain/usecase/vehicles/get_rockets.dart';
import 'package:get/get.dart';

class RocketsController extends GetxController with StateMixin<List<Vehicle>> {
  final GetRocketsUseCase rocketsUseCase;

  RocketsController({required this.rocketsUseCase});

  @override
  void onReady() {
    super.onReady();
    getRockets();
  }

  Future getRockets() async {
    change([], status: RxStatus.loading());

    try {
      final result = await rocketsUseCase.run();

      change(result, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error("Error!"));
    }
  }
}