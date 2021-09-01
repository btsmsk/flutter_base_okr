// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirstStage _$FirstStageFromJson(Map<String, dynamic> json) {
  return FirstStage(
    thrustSeaLevel: json['thrust_sea_level'] == null
        ? null
        : Thrust.fromJson(json['thrust_sea_level'] as Map<String, dynamic>),
    thrustVacuum: json['thrust_vacuum'] == null
        ? null
        : Thrust.fromJson(json['thrust_vacuum'] as Map<String, dynamic>),
    reusable: json['reusable'] as bool?,
    engines: json['engines'] as num?,
    fuelAmountTons: json['fuel_amount_tons'] as num?,
    burnTimeSec: json['burn_time_sec'] as num?,
  );
}

Map<String, dynamic> _$FirstStageToJson(FirstStage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('thrust_sea_level', instance.thrustSeaLevel?.toJson());
  writeNotNull('thrust_vacuum', instance.thrustVacuum?.toJson());
  writeNotNull('reusable', instance.reusable);
  writeNotNull('engines', instance.engines);
  writeNotNull('fuel_amount_tons', instance.fuelAmountTons);
  writeNotNull('burn_time_sec', instance.burnTimeSec);
  return val;
}
