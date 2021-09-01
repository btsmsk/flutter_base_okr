// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Engines _$EnginesFromJson(Map<String, dynamic> json) {
  return Engines(
    isp: json['isp'] == null
        ? null
        : Isp.fromJson(json['isp'] as Map<String, dynamic>),
    thrustSeaLevel: json['thrust_sea_level'] == null
        ? null
        : Thrust.fromJson(json['thrust_sea_level'] as Map<String, dynamic>),
    thrustVacuum: json['thrust_vacuum'] == null
        ? null
        : Thrust.fromJson(json['thrust_vacuum'] as Map<String, dynamic>),
    number: json['number'] as num?,
    type: json['type'] as String?,
    version: json['version'] as String?,
    layout: json['layout'] as String?,
    engineLossMax: json['engine_loss_max'] as num?,
    propellant1: json['propellant_1'] as String?,
    propellant2: json['propellant_2'] as String?,
    thrustToWeight: json['thrust_to_weight'] as num?,
  );
}

Map<String, dynamic> _$EnginesToJson(Engines instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isp', instance.isp?.toJson());
  writeNotNull('thrust_sea_level', instance.thrustSeaLevel?.toJson());
  writeNotNull('thrust_vacuum', instance.thrustVacuum?.toJson());
  writeNotNull('number', instance.number);
  writeNotNull('type', instance.type);
  writeNotNull('version', instance.version);
  writeNotNull('layout', instance.layout);
  writeNotNull('engine_loss_max', instance.engineLossMax);
  writeNotNull('propellant_1', instance.propellant1);
  writeNotNull('propellant_2', instance.propellant2);
  writeNotNull('thrust_to_weight', instance.thrustToWeight);
  return val;
}
