import 'package:flutter_base_okr/data/core/endpoints.dart';
import 'package:flutter_base_okr/data/response/rocket.dart';
import 'package:get/get.dart';

class VehicleRemoteDataSource extends GetConnect {
  Future<List<Rocket>> getRockets() async {
    List<Rocket> rockets = <Rocket>[];

    final response =
        await get<List<Rocket>>(Endpoints.getRockets, decoder: (body) {
      rockets = rocketListFromJson(body);
      return rockets;
    });

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return rockets;
  }
}
