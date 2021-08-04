import 'package:flutter_base_okr/data/models/vehicle/dragon_vehicle.dart';
import 'package:flutter_base_okr/data/repository/vehicle_repository.dart';
import 'package:flutter_base_okr/domain/usecase/GetUseCase.dart';

class GetDragonsUseCase extends GetUseCase<None, List<DragonVehicle>> {
  final VehicleRepository repository;

  GetDragonsUseCase({required this.repository});

  @override
  Future<List<DragonVehicle>> execute(None params) => repository.getDragons();
}