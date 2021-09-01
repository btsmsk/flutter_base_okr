// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Patch _$PatchFromJson(Map<String, dynamic> json) {
  return Patch(
    small: json['small'] as String?,
    large: json['large'] as String?,
  );
}

Map<String, dynamic> _$PatchToJson(Patch instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('small', instance.small);
  writeNotNull('large', instance.large);
  return val;
}
