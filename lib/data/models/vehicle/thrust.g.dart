// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thrust.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Thrust _$ThrustFromJson(Map<String, dynamic> json) {
  return Thrust(
    kN: json['kN'] as num?,
    lbf: json['lbf'] as num?,
  );
}

Map<String, dynamic> _$ThrustToJson(Thrust instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kN', instance.kN);
  writeNotNull('lbf', instance.lbf);
  return val;
}
