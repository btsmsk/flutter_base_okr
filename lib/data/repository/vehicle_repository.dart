import 'package:flutter_base_okr/data/data_source/remote/vehicle/vehicle_remote_data_source.dart';
import 'package:flutter_base_okr/data/models/vehicle/dragon_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicle/rocket_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicle/ship_vehicle.dart';

class VehicleRepository {
  final VehicleRemoteDataSource vehicleRemoteDataSource;

  VehicleRepository({required this.vehicleRemoteDataSource});

  Future<List<RocketVehicle>> getRockets() async => vehicleRemoteDataSource.getRockets();

  Future<List<ShipVehicle>> getShips() async => vehicleRemoteDataSource.getShips();

  Future<List<DragonVehicle>> getDragons() async => vehicleRemoteDataSource.getDragons();

  Future<RocketVehicle> getSpecificRocket(String id) async =>
      vehicleRemoteDataSource.getSpecificRocket(id);
}
