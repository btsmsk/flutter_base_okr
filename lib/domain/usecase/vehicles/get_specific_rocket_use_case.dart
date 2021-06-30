import 'package:flutter_base_okr/data/models/vehicle/rocket_vehicle.dart';
import 'package:flutter_base_okr/data/repository/vehicle_repository.dart';
import 'package:flutter_base_okr/domain/usecase/GetUseCase.dart';

class GetSpecificRocketUseCase extends GetUseCase<Params, RocketVehicle> {
  final VehicleRepository repository;

  GetSpecificRocketUseCase({required this.repository});

  @override
  Future<RocketVehicle> execute(Params params) async =>
      repository.getSpecificRocket(params.id);
}

class Params {
  String id;

  Params({required this.id});
}
