import 'package:flutter_base_okr/data/data_source/remote/vehicle/vehicle_remote_data_source.dart';

class VehicleRepository {
  final VehicleRemoteDataSource vehicleRemoteDataSource;

  VehicleRepository({required this.vehicleRemoteDataSource});

  getRockets() async => vehicleRemoteDataSource.getRockets();

  getShips() async => vehicleRemoteDataSource.getShips();

  getDragons() async => vehicleRemoteDataSource.getDragons();
}
