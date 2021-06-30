import 'package:flutter_base_okr/data/core/endpoints.dart';
import 'package:flutter_base_okr/data/models/launches/launches.dart';
import 'package:get/get.dart';

class SpecificLaunchRemoteDataSource extends GetConnect {

  Future<Launches> getSpecificLaunches(String id) async {
    late Launches launch;

    final response =
    await get<Launches>("${Endpoints.specific_launch}$id", decoder: (body) {
      launch = Launches.fromJson(body);
      return launch;
    });

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return launch;
  }
}
