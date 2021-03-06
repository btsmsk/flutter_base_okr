
import 'package:flutter_base_okr/data/data_source/remote/vehicle/vehicle_remote_data_source.dart';

class VehicleRepository {
  final VehicleRemoteDataSource vehicleRemoteDataSource;

  VehicleRepository({required this.vehicleRemoteDataSource});

  getRockets() async {
    return vehicleRemoteDataSource.getRockets();
  }

  getShips() async {
    return vehicleRemoteDataSource.getShips();
  }

  getRoadster() async {
    return vehicleRemoteDataSource.getRoadsters();
  }

  getDragons() async {
    return vehicleRemoteDataSource.getDragons();
  }
}