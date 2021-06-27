
import 'dart:convert';

import 'package:flutter_base_okr/data/models/vehicles/vehicle.dart';

ShipVehicle shipVehicleFromMap(String str) => ShipVehicle.fromMap(json.decode(str));

String shipVehicleToMap(ShipVehicle data) => json.encode(data.toMap());

List<ShipVehicle> shipListFromJson(str) =>
    List<ShipVehicle>.from(str.map((x) => ShipVehicle.fromMap(x)));

class ShipVehicle extends Vehicle{
  ShipVehicle({
    this.shipId,
    this.shipName,
    this.shipModel,
    this.shipType,
    this.roles,
    this.active,
    this.imo,
    this.mmsi,
    this.abs,
    this.shipVehicleClass,
    this.weightLbs,
    this.weightKg,
    this.yearBuilt,
    this.homePort,
    this.status,
    this.speedKn,
    this.courseDeg,
    this.position,
    this.successfulLandings,
    this.attemptedLandings,
    this.missions,
    this.url,
    this.image,
  }): super(
    id: shipId,
    name: shipName,
    type: 'ship',
    url: url,
    mass: weightKg,
    active: active,
    firstFlight: yearBuilt,
    photos: image
  );

  String? shipId;
  String? shipName;
  dynamic shipModel;
  String? shipType;
  List<String>? roles;
  bool? active;
  num? imo;
  num? mmsi;
  num? abs;
  num? shipVehicleClass;
  Mass? weightLbs;
  Mass? weightKg;
  DateTime? yearBuilt;
  String? homePort;
  String? status;
  dynamic speedKn;
  dynamic courseDeg;
  Position? position;
  dynamic successfulLandings;
  dynamic attemptedLandings;
  List<Mission>? missions;
  String? url;
  List<String>? image;

  factory ShipVehicle.fromMap(Map<String, dynamic> json) => ShipVehicle(
    shipId: json["ship_id"] == null ? null : json["ship_id"],
    shipName: json["ship_name"] == null ? null : json["ship_name"],
    shipModel: json["ship_model"],
    shipType: json["ship_type"] == null ? null : json["ship_type"],
    roles: json["roles"] == null ? null : List<String>.from(json["roles"].map((x) => x)),
    active: json["active"] == null ? null : json["active"],
    imo: json["imo"] == null ? null : json["imo"],
    mmsi: json["mmsi"] == null ? null : json["mmsi"],
    abs: json["abs"] == null ? null : json["abs"],
    shipVehicleClass: json["class"] == null ? null : json["class"],
    weightLbs: json["weight_lbs"] == null ? null : Mass(lb: json["weight_lbs"]),
    weightKg: json["weight_kg"] == null ? null : Mass(kg: json["weight_kg"]),
    yearBuilt: json["year_built"] == null ? null : DateTime(json['year_built']),
    homePort: json["home_port"] == null ? null : json["home_port"],
    status: json["status"] == null ? null : json["status"],
    speedKn: json["speed_kn"],
    courseDeg: json["course_deg"],
    position: json["position"] == null ? null : Position.fromMap(json["position"]),
    successfulLandings: json["successful_landings"],
    attemptedLandings: json["attempted_landings"],
    missions: json["missions"] == null ? null : List<Mission>.from(json["missions"].map((x) => Mission.fromMap(x))),
    url: json["url"] == null ? null : json["url"],
    image: json["image"] == null ? null : [json['image']].cast<String>(),
  );

  Map<String, dynamic> toMap() => {
    "ship_id": shipId == null ? null : shipId,
    "ship_name": shipName == null ? null : shipName,
    "ship_model": shipModel,
    "ship_type": shipType == null ? null : shipType,
    "roles": roles == null ? null : List<dynamic>.from(roles!.map((x) => x)),
    "active": active == null ? null : active,
    "imo": imo == null ? null : imo,
    "mmsi": mmsi == null ? null : mmsi,
    "abs": abs == null ? null : abs,
    "class": shipVehicleClass == null ? null : shipVehicleClass,
    "weight_lbs": weightLbs == null ? null : weightLbs,
    "weight_kg": weightKg == null ? null : weightKg,
    "year_built": yearBuilt == null ? null : yearBuilt,
    "home_port": homePort == null ? null : homePort,
    "status": status == null ? null : status,
    "speed_kn": speedKn,
    "course_deg": courseDeg,
    "position": position == null ? null : position?.toMap(),
    "successful_landings": successfulLandings,
    "attempted_landings": attemptedLandings,
    "missions": missions == null ? null : List<dynamic>.from(missions!.map((x) => x.toMap())),
    "url": url == null ? null : url,
    "image": image == null ? null : image,
  };
}

class Mission {
  Mission({
    this.name,
    this.flight,
  });

  String? name;
  int? flight;

  factory Mission.fromMap(Map<String, dynamic> json) => Mission(
    name: json["name"] == null ? null : json["name"],
    flight: json["flight"] == null ? null : json["flight"],
  );

  Map<String, dynamic> toMap() => {
    "name": name == null ? null : name,
    "flight": flight == null ? null : flight,
  };
}

class Position {
  Position({
    this.latitude,
    this.longitude,
  });

  dynamic latitude;
  dynamic longitude;

  factory Position.fromMap(Map<String, dynamic> json) => Position(
    latitude: json["latitude"],
    longitude: json["longitude"],
  );

  Map<String, dynamic> toMap() => {
    "latitude": latitude,
    "longitude": longitude,
  };
}
