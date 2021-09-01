// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launches _$LaunchesFromJson(Map<String, dynamic> json) {
  return Launches(
    fairings: json['fairings'] == null
        ? null
        : Fairings.fromJson(json['fairings'] as Map<String, dynamic>),
    links: json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>),
    staticFireDateUtc: json['static_fire_date_utc'] as String?,
    staticFireDateUnix: json['static_fire_date_unix'] as int?,
    tbd: json['tbd'] as bool?,
    net: json['net'] as bool?,
    window: json['window'] as int?,
    rocket: json['rocket'] as String?,
    success: json['success'] as bool?,
    details: json['details'] as String?,
    crew: (json['crew'] as List<dynamic>?)?.map((e) => e as String).toList(),
    ships: (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
    capsules:
        (json['capsules'] as List<dynamic>?)?.map((e) => e as String).toList(),
    payloads:
        (json['payloads'] as List<dynamic>?)?.map((e) => e as String).toList(),
    launchpad: json['launchpad'] as String?,
    autoUpdate: json['auto_update'] as bool?,
    launchLibraryId: json['launch_library_id'] as String?,
    failures: (json['failures'] as List<dynamic>?)
        ?.map((e) => Failures.fromJson(e as Map<String, dynamic>))
        .toList(),
    flightNumber: json['flight_number'] as int?,
    name: json['name'] as String?,
    dateUtc: Launches._parseDateTime(json['date_utc'] as String),
    dateUnix: json['date_unix'] as int?,
    dateLocal: json['date_local'] as String?,
    datePrecision: json['date_precision'] as String?,
    upcoming: json['upcoming'] as bool?,
    cores: (json['cores'] as List<dynamic>?)
        ?.map((e) => Cores.fromJson(e as Map<String, dynamic>))
        .toList(),
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$LaunchesToJson(Launches instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fairings', instance.fairings?.toJson());
  writeNotNull('links', instance.links?.toJson());
  writeNotNull('static_fire_date_utc', instance.staticFireDateUtc);
  writeNotNull('static_fire_date_unix', instance.staticFireDateUnix);
  writeNotNull('tbd', instance.tbd);
  writeNotNull('net', instance.net);
  writeNotNull('window', instance.window);
  writeNotNull('rocket', instance.rocket);
  writeNotNull('success', instance.success);
  writeNotNull('details', instance.details);
  writeNotNull('crew', instance.crew);
  writeNotNull('ships', instance.ships);
  writeNotNull('capsules', instance.capsules);
  writeNotNull('payloads', instance.payloads);
  writeNotNull('launchpad', instance.launchpad);
  writeNotNull('auto_update', instance.autoUpdate);
  writeNotNull('launch_library_id', instance.launchLibraryId);
  writeNotNull('failures', instance.failures?.map((e) => e.toJson()).toList());
  writeNotNull('flight_number', instance.flightNumber);
  writeNotNull('name', instance.name);
  writeNotNull('date_utc', instance.dateUtc?.toIso8601String());
  writeNotNull('date_unix', instance.dateUnix);
  writeNotNull('date_local', instance.dateLocal);
  writeNotNull('date_precision', instance.datePrecision);
  writeNotNull('upcoming', instance.upcoming);
  writeNotNull('cores', instance.cores?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id);
  return val;
}
