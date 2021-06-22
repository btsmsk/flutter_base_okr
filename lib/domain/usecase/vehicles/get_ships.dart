import 'package:flutter_base_okr/data/repository/vehicle_repository.dart';

class GetShipsUseCase {
  final VehicleRepository repository;

  GetShipsUseCase({required this.repository});

  Future run() async => repository.getShips();
}
