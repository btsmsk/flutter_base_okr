// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    patch: json['patch'] == null
        ? null
        : Patch.fromJson(json['patch'] as Map<String, dynamic>),
    reddit: json['reddit'] == null
        ? null
        : Reddit.fromJson(json['reddit'] as Map<String, dynamic>),
    flickr: json['flickr'] == null
        ? null
        : Flickr.fromJson(json['flickr'] as Map<String, dynamic>),
    presskit: json['presskit'] as String?,
    webcast: json['webcast'] as String?,
    youtubeId: json['youtubeId'] as String?,
    article: json['article'] as String?,
    wikipedia: json['wikipedia'] as String?,
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('patch', instance.patch?.toJson());
  writeNotNull('reddit', instance.reddit?.toJson());
  writeNotNull('flickr', instance.flickr?.toJson());
  writeNotNull('presskit', instance.presskit);
  writeNotNull('webcast', instance.webcast);
  writeNotNull('youtubeId', instance.youtubeId);
  writeNotNull('article', instance.article);
  writeNotNull('wikipedia', instance.wikipedia);
  return val;
}
