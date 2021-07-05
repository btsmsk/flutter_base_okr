import 'package:flutter_base_okr/data/data_source/remote/vehicle/vehicle_remote_data_source.dart';
import 'package:flutter_base_okr/data/repository/vehicle_repository.dart';
import 'package:flutter_base_okr/domain/usecase/vehicles/get_dragons.dart';
import 'package:flutter_base_okr/domain/usecase/vehicles/get_rockets.dart';
import 'package:flutter_base_okr/domain/usecase/vehicles/get_ships.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/dragons_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/rockets_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/ships_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/vehicles_controller.dart';
import 'package:get/get.dart';

class VehiclesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VehicleRepository>(() =>
        VehicleRepository(vehicleRemoteDataSource: VehicleRemoteDataSource()));
    Get.lazyPut<GetRocketsUseCase>(
        () => GetRocketsUseCase(repository: Get.find()));
    Get.lazyPut<GetShipsUseCase>(() => GetShipsUseCase(repository: Get.find()));
    Get.lazyPut<GetDragonsUseCase>(
        () => GetDragonsUseCase(repository: Get.find()));
    Get.put<VehiclesController>(VehiclesController());
    Get.put<RocketsController>(RocketsController(rocketsUseCase: Get.find()));
    Get.put<ShipsController>(ShipsController(shipsUseCase: Get.find()));
    Get.put<DragonsController>(DragonsController(dragonsUseCase: Get.find()));
  }
}
