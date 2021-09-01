// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flickr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Flickr _$FlickrFromJson(Map<String, dynamic> json) {
  return Flickr(
    small: (json['small'] as List<dynamic>?)?.map((e) => e as String).toList(),
    original:
        (json['original'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$FlickrToJson(Flickr instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('small', instance.small);
  writeNotNull('original', instance.original);
  return val;
}
