
import 'package:flutter_base_okr/data/repository/launches_repository.dart';

class UpcomingLaunchesUseCase {

  final LaunchesRepository repository;

  UpcomingLaunchesUseCase({required this.repository});

  Future run() async => repository.getUpcomingLaunches();
}