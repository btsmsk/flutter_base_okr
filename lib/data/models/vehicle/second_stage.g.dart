// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'second_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecondStage _$SecondStageFromJson(Map<String, dynamic> json) {
  return SecondStage(
    thrust: json['thrust'] == null
        ? null
        : Thrust.fromJson(json['thrust'] as Map<String, dynamic>),
    payloads: json['payloads'] == null
        ? null
        : Payloads.fromJson(json['payloads'] as Map<String, dynamic>),
    reusable: json['reusable'] as bool?,
    engines: json['engines'] as num?,
    fuelAmountTons: json['fuel_amount_tons'] as num?,
    burnTimeSec: json['burn_time_sec'] as num?,
  );
}

Map<String, dynamic> _$SecondStageToJson(SecondStage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('thrust', instance.thrust?.toJson());
  writeNotNull('payloads', instance.payloads?.toJson());
  writeNotNull('reusable', instance.reusable);
  writeNotNull('engines', instance.engines);
  writeNotNull('fuel_amount_tons', instance.fuelAmountTons);
  writeNotNull('burn_time_sec', instance.burnTimeSec);
  return val;
}
