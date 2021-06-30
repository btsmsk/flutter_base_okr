import 'package:flutter_base_okr/data/models/vehicle/mass.dart';
import 'package:flutter_base_okr/data/models/vehicle/vehicle.dart';
import 'package:flutter_base_okr/utils/date.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ship_vehicle.g.dart';

@JsonSerializable()
class ShipVehicle extends Vehicle {
  factory ShipVehicle.fromJson(Map<String, dynamic> json) =>
      _$ShipVehicleFromJson(json);

  static List<ShipVehicle> getShipModelList(body) =>
      body.map((i) => ShipVehicle.fromJson(i)).toList().cast<ShipVehicle>();

  Map<String, dynamic> toJson() => _$ShipVehicleToJson(this);

  @JsonKey(defaultValue: 'legacy_id')
  String? legacyId;
  String? model;
  List<String>? roles;
  num? imo;
  num? mmsi;
  num? abs;
  @JsonKey(name: 'class')
  num? shipClass;
  @JsonKey(name: 'mass_kg')
  num? massKg;
  @JsonKey(name: 'mass_lbs')
  num? massLbs;
  @JsonKey(name: 'year_built')
  num? yearBuilt;
  @JsonKey(name: 'home_port')
  String? homePort;
  String? status;
  @JsonKey(name: 'speed_kn')
  num? speedKn;
  @JsonKey(name: 'course_deg')
  num? courseDeg;
  num? latitude;
  num? longitude;
  @JsonKey(name: 'last_ais_update')
  num? lastAisUpdate;
  String? link;
  String? image;
  List<String>? launches;
  String? name;
  bool? active;
  String? id;

  ShipVehicle(
      {this.legacyId,
      this.model,
      this.roles,
      this.imo,
      this.mmsi,
      this.abs,
      this.shipClass,
      this.massKg,
      this.massLbs,
      this.yearBuilt,
      this.homePort,
      this.status,
      this.speedKn,
      this.courseDeg,
      this.latitude,
      this.longitude,
      this.lastAisUpdate,
      this.link,
      this.image,
      this.launches,
      this.name,
      this.active,
      this.id})
      : super(
            id: id,
            name: name,
            type: 'ship',
            url: link,
            mass: Mass(kg: massKg, lb: massLbs),
            active: active,
            dateTime: null,
            photos: image != null ? [image] : null);
}
