
import 'package:flutter_base_okr/data/models/launches/launches.dart';
import 'package:flutter_base_okr/data/repository/launches_repository.dart';
import 'package:flutter_base_okr/domain/usecase/GetUseCase.dart';


class GetUpcomingLaunchesUseCase extends GetUseCase<None, List<Launches>> {

  final LaunchesRepository repository;

  GetUpcomingLaunchesUseCase({required this.repository});

  @override
  Future<List<Launches>> execute(None none) async => repository.getUpcomingLaunches();
}