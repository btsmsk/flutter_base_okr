import 'package:flutter_base_okr/data/models/vehicle/rocket_vehicle.dart';
import 'package:flutter_base_okr/data/repository/vehicle_repository.dart';
import 'package:flutter_base_okr/domain/usecase/GetUseCase.dart';

class GetRocketsUseCase extends GetUseCase<None, List<RocketVehicle>> {
  final VehicleRepository repository;

  GetRocketsUseCase({required this.repository});

  @override
  Future<List<RocketVehicle>> execute(None params) => repository.getRockets();
}
