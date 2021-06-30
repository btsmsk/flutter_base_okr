import 'package:flutter_base_okr/data/models/launches/launches.dart';
import 'package:flutter_base_okr/data/repository/launches_repository.dart';

import '../../GetUseCase.dart';

class GetSpecificLaunchUseCase extends GetUseCase<Params, Launches> {

  final LaunchesRepository repository;

  GetSpecificLaunchUseCase({required this.repository});

  @override
  Future<Launches> execute(Params params) async =>
      repository.getSpecificLaunch(params.id);
}

class Params {
  String id;

  Params({
    required this.id
  });
}