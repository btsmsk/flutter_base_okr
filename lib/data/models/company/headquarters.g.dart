// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headquarters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Headquarters _$HeadquartersFromJson(Map<String, dynamic> json) {
  return Headquarters(
    address: json['address'] as String?,
    city: json['city'] as String?,
    state: json['state'] as String?,
  );
}

Map<String, dynamic> _$HeadquartersToJson(Headquarters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  return val;
}
