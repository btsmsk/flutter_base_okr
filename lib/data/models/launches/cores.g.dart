// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cores _$CoresFromJson(Map<String, dynamic> json) {
  return Cores(
    coreSerial: json['core_serial'] as String?,
    flight: json['flight'] as int?,
    block: json['block'] as int?,
    gridfins: json['gridfins'] as bool?,
    legs: json['legs'] as bool?,
    reused: json['reused'] as bool?,
    landSuccess: json['land_success'] as bool?,
    landingIntent: json['landing_intent'] as bool?,
    landingType: json['landing_type'] as String?,
    landingVehicle: json['landing_vehicle'] as String?,
  );
}

Map<String, dynamic> _$CoresToJson(Cores instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('core_serial', instance.coreSerial);
  writeNotNull('flight', instance.flight);
  writeNotNull('block', instance.block);
  writeNotNull('gridfins', instance.gridfins);
  writeNotNull('legs', instance.legs);
  writeNotNull('reused', instance.reused);
  writeNotNull('land_success', instance.landSuccess);
  writeNotNull('landing_intent', instance.landingIntent);
  writeNotNull('landing_type', instance.landingType);
  writeNotNull('landing_vehicle', instance.landingVehicle);
  return val;
}
