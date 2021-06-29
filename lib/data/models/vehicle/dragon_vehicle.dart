import 'package:flutter_base_okr/data/models/vehicle/pressurized_capsule.dart';
import 'package:flutter_base_okr/data/models/vehicle/vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicle/volume.dart';
import 'package:json_annotation/json_annotation.dart';

import 'diameter.dart';
import 'heat_shield.dart';
import 'mass.dart';
import 'thrusters.dart';
import 'trunk.dart';

part 'dragon_vehicle.g.dart';

@JsonSerializable()
class DragonVehicle extends Vehicle {
  factory DragonVehicle.fromJson(Map<String, dynamic> json) =>
      _$DragonVehicleFromJson(json);

  static List<DragonVehicle> getDragonModelList(body) =>
      body.map((i) => DragonVehicle.fromJson(i)).toList().cast<DragonVehicle>();

  Map<String, dynamic> toJson() => _$DragonVehicleToJson(this);

  @JsonKey(name: 'heat_shield')
  HeatShield? heatShield;
  @JsonKey(name: 'launch_payload_mass')
  Mass? launchPayloadMass;
  @JsonKey(name: 'launch_payload_vol')
  Volume? launchPayloadVol;
  @JsonKey(name: 'return_payload_mass')
  Mass? returnPayloadMass;
  @JsonKey(name: 'return_payload_vol')
  Volume? returnPayloadVol;
  @JsonKey(name: 'pressurized_capsule')
  PressurizedCapsule? pressurizedCapsule;
  Trunk? trunk;
  @JsonKey(name: 'height_w_trunk')
  Diameter? heightWTrunk;
  Diameter? diameter;
  @JsonKey(name: 'first_flight')
  String? firstFlight;
  @JsonKey(name: 'flickr_images')
  List<String>? flickrImages;
  String? name;
  bool? active;
  @JsonKey(name: 'crew_capacity')
  int? crewCapacity;
  @JsonKey(name: 'sidewall_angle_deg')
  int? sidewallAngleDeg;
  @JsonKey(name: 'orbit_duration_yr')
  int? orbitDurationYr;
  @JsonKey(name: 'dry_mass_kg')
  int? dryMassKg;
  @JsonKey(name: 'dry_mass_lb')
  int? dryMassLb;
  List<Thrusters>? thrusters;
  String? wikipedia;
  String? description;
  String? id;

  DragonVehicle(
      {this.heatShield,
      this.launchPayloadMass,
      this.launchPayloadVol,
      this.returnPayloadMass,
      this.returnPayloadVol,
      this.pressurizedCapsule,
      this.trunk,
      this.heightWTrunk,
      this.diameter,
      this.firstFlight,
      this.flickrImages,
      this.name,
      this.active,
      this.crewCapacity,
      this.sidewallAngleDeg,
      this.orbitDurationYr,
      this.dryMassKg,
      this.dryMassLb,
      this.thrusters,
      this.wikipedia,
      this.description,
      this.id})
      : super(
            id: id,
            name: name,
            type: 'capsule',
            active: active,
            description: description,
            url: wikipedia,
            height: heightWTrunk,
            diameter: diameter,
            mass: launchPayloadMass,
            dateTime:
                firstFlight != null ? DateTime.tryParse(firstFlight) : null,
            photos: flickrImages);
}