// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cores _$CoresFromJson(Map<String, dynamic> json) {
  return Cores(
    core: json['core'] as String?,
    flight: json['flight'] as int?,
    gridfins: json['gridfins'] as bool?,
    legs: json['legs'] as bool?,
    reused: json['reused'] as bool?,
    landingAttempt: json['landingAttempt'] as bool?,
    landingSuccess: json['landingSuccess'] as bool?,
    landingType: json['landingType'] as String?,
    landpad: json['landpad'] as String?,
  );
}

Map<String, dynamic> _$CoresToJson(Cores instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('core', instance.core);
  writeNotNull('flight', instance.flight);
  writeNotNull('gridfins', instance.gridfins);
  writeNotNull('legs', instance.legs);
  writeNotNull('reused', instance.reused);
  writeNotNull('landingAttempt', instance.landingAttempt);
  writeNotNull('landingSuccess', instance.landingSuccess);
  writeNotNull('landingType', instance.landingType);
  writeNotNull('landpad', instance.landpad);
  return val;
}
