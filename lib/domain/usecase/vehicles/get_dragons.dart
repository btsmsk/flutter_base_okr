import 'package:flutter_base_okr/data/repository/vehicle_repository.dart';

class GetDragonsUseCase {
  final VehicleRepository repository;

  GetDragonsUseCase({required this.repository});

  Future run() async => repository.getDragons();
}
