// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dragon_vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DragonVehicle _$DragonVehicleFromJson(Map<String, dynamic> json) {
  return DragonVehicle(
    heatShield: json['heat_shield'] == null
        ? null
        : HeatShield.fromJson(json['heat_shield'] as Map<String, dynamic>),
    launchPayloadMass: json['launch_payload_mass'] == null
        ? null
        : Mass.fromJson(json['launch_payload_mass'] as Map<String, dynamic>),
    launchPayloadVol: json['launch_payload_vol'] == null
        ? null
        : Volume.fromJson(json['launch_payload_vol'] as Map<String, dynamic>),
    returnPayloadMass: json['return_payload_mass'] == null
        ? null
        : Mass.fromJson(json['return_payload_mass'] as Map<String, dynamic>),
    returnPayloadVol: json['return_payload_vol'] == null
        ? null
        : Volume.fromJson(json['return_payload_vol'] as Map<String, dynamic>),
    pressurizedCapsule: json['pressurized_capsule'] == null
        ? null
        : PressurizedCapsule.fromJson(
            json['pressurized_capsule'] as Map<String, dynamic>),
    trunk: json['trunk'] == null
        ? null
        : Trunk.fromJson(json['trunk'] as Map<String, dynamic>),
    heightWTrunk: json['height_w_trunk'] == null
        ? null
        : Diameter.fromJson(json['height_w_trunk'] as Map<String, dynamic>),
    diameter: json['diameter'] == null
        ? null
        : Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
    firstFlight: json['first_flight'] as String?,
    flickrImages: (json['flickr_images'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    name: json['name'] as String?,
    active: json['active'] as bool?,
    crewCapacity: json['crew_capacity'] as num?,
    sidewallAngleDeg: json['sidewall_angle_deg'] as num?,
    orbitDurationYr: json['orbit_duration_yr'] as num?,
    dryMassKg: json['dry_mass_kg'] as num?,
    dryMassLb: json['dry_mass_lb'] as num?,
    thrusters: (json['thrusters'] as List<dynamic>?)
        ?.map((e) => Thrusters.fromJson(e as Map<String, dynamic>))
        .toList(),
    wikipedia: json['wikipedia'] as String?,
    description: json['description'] as String?,
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$DragonVehicleToJson(DragonVehicle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('heat_shield', instance.heatShield?.toJson());
  writeNotNull('launch_payload_mass', instance.launchPayloadMass?.toJson());
  writeNotNull('launch_payload_vol', instance.launchPayloadVol?.toJson());
  writeNotNull('return_payload_mass', instance.returnPayloadMass?.toJson());
  writeNotNull('return_payload_vol', instance.returnPayloadVol?.toJson());
  writeNotNull('pressurized_capsule', instance.pressurizedCapsule?.toJson());
  writeNotNull('trunk', instance.trunk?.toJson());
  writeNotNull('height_w_trunk', instance.heightWTrunk?.toJson());
  writeNotNull('diameter', instance.diameter?.toJson());
  writeNotNull('first_flight', instance.firstFlight);
  writeNotNull('flickr_images', instance.flickrImages);
  writeNotNull('name', instance.name);
  writeNotNull('active', instance.active);
  writeNotNull('crew_capacity', instance.crewCapacity);
  writeNotNull('sidewall_angle_deg', instance.sidewallAngleDeg);
  writeNotNull('orbit_duration_yr', instance.orbitDurationYr);
  writeNotNull('dry_mass_kg', instance.dryMassKg);
  writeNotNull('dry_mass_lb', instance.dryMassLb);
  writeNotNull(
      'thrusters', instance.thrusters?.map((e) => e.toJson()).toList());
  writeNotNull('wikipedia', instance.wikipedia);
  writeNotNull('description', instance.description);
  writeNotNull('id', instance.id);
  return val;
}
