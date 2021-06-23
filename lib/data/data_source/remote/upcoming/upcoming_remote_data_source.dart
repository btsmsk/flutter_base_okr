import 'package:flutter_base_okr/data/core/endpoints.dart';
import 'package:flutter_base_okr/data/models/launches/upcoming/launches.dart';
import 'package:get/get.dart';

class UpcomingRemoteDataSource extends GetConnect {
  Future<List<Launches>> getUpcomingLaunches() async {
    List<Launches> launches = <Launches>[];

    final response =
        await get<List<Launches>>(Endpoints.upcoming, decoder: (body) {
      launches = Launches.getLaunchModelList(body);
      return launches;
    });

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return launches;
  }
}
