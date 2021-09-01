// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship_vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShipVehicle _$ShipVehicleFromJson(Map<String, dynamic> json) {
  return ShipVehicle(
    legacyId: json['legacyId'] as String? ?? 'legacy_id',
    model: json['model'] as String?,
    usage: json['type'] as String?,
    roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
    imo: json['imo'] as num?,
    mmsi: json['mmsi'] as num?,
    abs: json['abs'] as num?,
    shipClass: json['class'] as num?,
    massKg: json['mass_kg'] as num?,
    massLbs: json['mass_lbs'] as num?,
    yearBuilt: json['year_built'] as num?,
    homePort: json['home_port'] as String?,
    status: json['status'] as String?,
    speedKn: json['speed_kn'] as num?,
    courseDeg: json['course_deg'] as num?,
    latitude: json['latitude'] as num?,
    longitude: json['longitude'] as num?,
    lastAisUpdate: json['last_ais_update'] as num?,
    link: json['link'] as String?,
    image: json['image'] as String?,
    launches:
        (json['launches'] as List<dynamic>?)?.map((e) => e as String).toList(),
    name: json['name'] as String?,
    active: json['active'] as bool?,
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$ShipVehicleToJson(ShipVehicle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('legacyId', instance.legacyId);
  writeNotNull('model', instance.model);
  writeNotNull('type', instance.usage);
  writeNotNull('roles', instance.roles);
  writeNotNull('imo', instance.imo);
  writeNotNull('mmsi', instance.mmsi);
  writeNotNull('abs', instance.abs);
  writeNotNull('class', instance.shipClass);
  writeNotNull('mass_kg', instance.massKg);
  writeNotNull('mass_lbs', instance.massLbs);
  writeNotNull('year_built', instance.yearBuilt);
  writeNotNull('home_port', instance.homePort);
  writeNotNull('status', instance.status);
  writeNotNull('speed_kn', instance.speedKn);
  writeNotNull('course_deg', instance.courseDeg);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('last_ais_update', instance.lastAisUpdate);
  writeNotNull('link', instance.link);
  writeNotNull('image', instance.image);
  writeNotNull('launches', instance.launches);
  writeNotNull('name', instance.name);
  writeNotNull('active', instance.active);
  writeNotNull('id', instance.id);
  return val;
}
