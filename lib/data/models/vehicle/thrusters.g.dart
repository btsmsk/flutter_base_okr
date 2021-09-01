// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thrusters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Thrusters _$ThrustersFromJson(Map<String, dynamic> json) {
  return Thrusters(
    type: json['type'] as String?,
    amount: json['amount'] as num?,
    pods: json['pods'] as num?,
    fuel1: json['fuel_1'] as String?,
    fuel2: json['fuel_2'] as String?,
    isp: json['isp'] as num?,
    thrust: json['thrust'] == null
        ? null
        : Thrust.fromJson(json['thrust'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ThrustersToJson(Thrusters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('amount', instance.amount);
  writeNotNull('pods', instance.pods);
  writeNotNull('fuel_1', instance.fuel1);
  writeNotNull('fuel_2', instance.fuel2);
  writeNotNull('isp', instance.isp);
  writeNotNull('thrust', instance.thrust?.toJson());
  return val;
}
