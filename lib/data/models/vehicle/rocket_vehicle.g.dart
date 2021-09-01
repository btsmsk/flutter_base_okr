// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RocketVehicle _$RocketVehicleFromJson(Map<String, dynamic> json) {
  return RocketVehicle(
    height: json['height'] == null
        ? null
        : Diameter.fromJson(json['height'] as Map<String, dynamic>),
    diameter: json['diameter'] == null
        ? null
        : Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
    mass: json['mass'] == null
        ? null
        : Mass.fromJson(json['mass'] as Map<String, dynamic>),
    firstStage: json['first_stage'] == null
        ? null
        : FirstStage.fromJson(json['first_stage'] as Map<String, dynamic>),
    secondStage: json['second_stage'] == null
        ? null
        : SecondStage.fromJson(json['second_stage'] as Map<String, dynamic>),
    engines: json['engines'] == null
        ? null
        : Engines.fromJson(json['engines'] as Map<String, dynamic>),
    landingLegs: json['landing_legs'] == null
        ? null
        : LandingLegs.fromJson(json['landing_legs'] as Map<String, dynamic>),
    payloadWeights: (json['payload_weights'] as List<dynamic>?)
        ?.map((e) => PayloadWeights.fromJson(e as Map<String, dynamic>))
        .toList(),
    flickrImages: (json['flickr_images'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    name: json['name'] as String?,
    type: json['type'] as String?,
    active: json['active'] as bool?,
    stages: json['stages'] as num?,
    boosters: json['boosters'] as num?,
    costPerLaunch: json['cost_per_launch'] as num?,
    successRatePct: json['success_rate_pct'] as num?,
    firstFlight: json['first_flight'] as String?,
    country: json['country'] as String?,
    company: json['company'] as String?,
    wikipedia: json['wikipedia'] as String?,
    description: json['description'] as String?,
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$RocketVehicleToJson(RocketVehicle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('height', instance.height?.toJson());
  writeNotNull('diameter', instance.diameter?.toJson());
  writeNotNull('mass', instance.mass?.toJson());
  writeNotNull('first_stage', instance.firstStage?.toJson());
  writeNotNull('second_stage', instance.secondStage?.toJson());
  writeNotNull('engines', instance.engines?.toJson());
  writeNotNull('landing_legs', instance.landingLegs?.toJson());
  writeNotNull('payload_weights',
      instance.payloadWeights?.map((e) => e.toJson()).toList());
  writeNotNull('flickr_images', instance.flickrImages);
  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('active', instance.active);
  writeNotNull('stages', instance.stages);
  writeNotNull('boosters', instance.boosters);
  writeNotNull('cost_per_launch', instance.costPerLaunch);
  writeNotNull('success_rate_pct', instance.successRatePct);
  writeNotNull('first_flight', instance.firstFlight);
  writeNotNull('country', instance.country);
  writeNotNull('company', instance.company);
  writeNotNull('wikipedia', instance.wikipedia);
  writeNotNull('description', instance.description);
  writeNotNull('id', instance.id);
  return val;
}
