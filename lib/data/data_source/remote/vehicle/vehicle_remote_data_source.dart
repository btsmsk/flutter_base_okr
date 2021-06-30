import 'dart:async';

import 'package:flutter_base_okr/data/core/endpoints.dart';
import 'package:flutter_base_okr/data/models/vehicle/dragon_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicle/rocket_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicle/ship_vehicle.dart';
import 'package:get/get.dart';

class VehicleRemoteDataSource extends GetConnect {
  Future<List<RocketVehicle>> getRockets() async {
    List<RocketVehicle> rockets = <RocketVehicle>[];

    final response =
    await get<List<RocketVehicle>>(Endpoints.getRockets, decoder: (body) {
      rockets = RocketVehicle.getRocketModelList(body);
      return rockets;
    });

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return rockets;
  }

  Future<RocketVehicle> getSpecificRocket(String id) async {
    late RocketVehicle rocket;

    final response =
    await get<RocketVehicle>("${Endpoints.getRockets}/$id", decoder: (body) {
      rocket = RocketVehicle.fromJson(body);
      return rocket;
    });

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return rocket;
  }

  Future<List<ShipVehicle>> getShips() async {
    List<ShipVehicle> ships = <ShipVehicle>[];

    final response =
    await get<List<ShipVehicle>>(Endpoints.getShips, decoder: (body) {
      ships = ShipVehicle.getShipModelList(body);
      return ships;
    });

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return ships;
  }

  Future<List<DragonVehicle>> getDragons() async {
    List<DragonVehicle> dragons = <DragonVehicle>[];

    final response =
    await get<List<DragonVehicle>>(Endpoints.getDragons, decoder: (body) {
      dragons = DragonVehicle.getDragonModelList(body);
      return dragons;
    });

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return dragons;
  }

  //TODO: add roadster later.
}
