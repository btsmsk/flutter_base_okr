import 'package:flutter_base_okr/data/models/vehicle/ship_vehicle.dart';
import 'package:flutter_base_okr/data/repository/vehicle_repository.dart';
import 'package:flutter_base_okr/domain/usecase/GetUseCase.dart';

class GetShipsUseCase extends GetUseCase<None, List<ShipVehicle>> {
  final VehicleRepository repository;

  GetShipsUseCase({required this.repository});

  @override
  Future<List<ShipVehicle>> execute(None params) => repository.getShips();
}
