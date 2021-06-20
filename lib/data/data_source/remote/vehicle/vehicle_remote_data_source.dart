import 'package:flutter_base_okr/data/core/endpoints.dart';
import 'package:flutter_base_okr/data/models/vehicles/dragon_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicles/roadster_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicles/rocket_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicles/ship_vehicle.dart';
import 'package:get/get.dart';

class VehicleRemoteDataSource extends GetConnect {
  Future<List<RocketVehicle>> getRockets() async {
    List<RocketVehicle> rockets = <RocketVehicle>[];

    final response =
        await get<List<RocketVehicle>>(Endpoints.getRockets, decoder: (body) {
      rockets = rocketListFromJson(body);
      return rockets;
    });

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return rockets;
  }

  Future<List<ShipVehicle>> getShips() async {
    List<ShipVehicle> ships = <ShipVehicle>[];

    final response =
        await get<List<ShipVehicle>>(Endpoints.getShips, decoder: (body) {
      ships = shipListFromJson(body);
      return ships;
    });

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return ships;
  }

  Future<List<RoadsterVehicle>> getRoadsters() async {
    List<RoadsterVehicle> roadster = <RoadsterVehicle>[];

    final response = await get<List<RoadsterVehicle>>(Endpoints.getRoadster,
        decoder: (body) {
      roadster = roadstersFromJson(body);
      return roadster;
    });

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return roadster;
  }

  Future<List<DragonVehicle>> getDragons() async {
    List<DragonVehicle> dragons = <DragonVehicle>[];

    final response =
        await get<List<DragonVehicle>>(Endpoints.getDragons, decoder: (body) {
      dragons = dragonsFromJson(body);
      return dragons;
    });

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return dragons;
  }
}
