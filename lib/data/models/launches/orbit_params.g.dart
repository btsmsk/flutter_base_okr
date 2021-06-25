// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orbit_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrbitParams _$OrbitParamsFromJson(Map<String, dynamic> json) {
  return OrbitParams(
    referenceSystem: json['reference_system'] as String?,
    regime: json['regime'] as String?,
  );
}

Map<String, dynamic> _$OrbitParamsToJson(OrbitParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reference_system', instance.referenceSystem);
  writeNotNull('regime', instance.regime);
  return val;
}
