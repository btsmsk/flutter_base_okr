import 'package:flutter_base_okr/data/repository/vehicle_repository.dart';

class GetRocketsUseCase {
  final VehicleRepository repository;

  GetRocketsUseCase(this.repository);

  Future run() async => repository.getRockets();
}
