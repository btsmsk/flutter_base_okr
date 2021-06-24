// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launches _$LaunchesFromJson(Map<String, dynamic> json) {
  return Launches(
    json['flight_number'] as int?,
    json['mission_name'] as String?,
    (json['mission_id'] as List<dynamic>?)?.map((e) => e as String).toList(),
    json['upcoming'] as bool?,
    json['launch_year'] as String?,
    json['launch_date_unix'] as int?,
    json['launch_date_utc'] as String?,
    json['launch_date_local'] as String?,
    json['is_tentative'] as bool?,
    json['tentative_max_precision'] as String?,
    json['tbd'] as bool?,
    json['launch_window'] as int?,
    json['rocket'] == null
        ? null
        : Rocket.fromJson(json['rocket'] as Map<String, dynamic>),
    (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
    json['telemetry'] == null
        ? null
        : Telemetry.fromJson(json['telemetry'] as Map<String, dynamic>),
    LaunchSite.fromJson(json['launch_site'] as Map<String, dynamic>),
    json['launch_success'] as bool?,
    json['launch_failure_details'] == null
        ? null
        : LaunchFailureDetails.fromJson(
            json['launch_failure_details'] as Map<String, dynamic>),
    json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>),
    json['details'] as String?,
    json['static_fire_date_utc'] as String?,
    json['static_fire_date_unix'] as int?,
    json['timeline'] == null
        ? null
        : Timeline.fromJson(json['timeline'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LaunchesToJson(Launches instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('flight_number', instance.flightNumber);
  writeNotNull('mission_name', instance.missionName);
  writeNotNull('mission_id', instance.missionId);
  writeNotNull('upcoming', instance.upcoming);
  writeNotNull('launch_year', instance.launchYear);
  writeNotNull('launch_date_unix', instance.launchDateUnix);
  writeNotNull('launch_date_utc', instance.launchDateUtc);
  writeNotNull('launch_date_local', instance.launchDateLocal);
  writeNotNull('is_tentative', instance.isTentative);
  writeNotNull('tentative_max_precision', instance.tentativeMaxPrecision);
  writeNotNull('tbd', instance.tbd);
  writeNotNull('launch_window', instance.launchWindow);
  writeNotNull('rocket', instance.rocket?.toJson());
  writeNotNull('ships', instance.ships);
  writeNotNull('telemetry', instance.telemetry?.toJson());
  val['launch_site'] = instance.launchSite.toJson();
  writeNotNull('launch_success', instance.launchSuccess);
  writeNotNull(
      'launch_failure_details', instance.launchFailureDetails?.toJson());
  writeNotNull('links', instance.links?.toJson());
  writeNotNull('details', instance.details);
  writeNotNull('static_fire_date_utc', instance.staticFireDateUtc);
  writeNotNull('static_fire_date_unix', instance.staticFireDateUnix);
  writeNotNull('timeline', instance.timeline?.toJson());
  return val;
}
