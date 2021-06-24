// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Telemetry _$TelemetryFromJson(Map<String, dynamic> json) {
  return Telemetry(
    flightClub: json['flight_club'] as String?,
  );
}

Map<String, dynamic> _$TelemetryToJson(Telemetry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('flight_club', instance.flightClub);
  return val;
}
