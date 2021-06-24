// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    json['mission_patch'] as String?,
    json['mission_patch_small'] as String?,
    json['reddit_campaign'] as String?,
    json['reddit_launch'] as String?,
    json['reddit_recovery'] as String?,
    json['reddit_media'] as String?,
    json['presskit'] as String?,
    json['article_link'] as String?,
    json['wikipedia'] as String?,
    json['video_link'] as String?,
    json['youtube_id'] as String?,
    (json['flickr_images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mission_patch', instance.missionPatch);
  writeNotNull('mission_patch_small', instance.missionPatchSmall);
  writeNotNull('reddit_campaign', instance.redditCampaign);
  writeNotNull('reddit_launch', instance.redditLaunch);
  writeNotNull('reddit_recovery', instance.redditRecovery);
  writeNotNull('reddit_media', instance.redditMedia);
  writeNotNull('presskit', instance.presskit);
  writeNotNull('article_link', instance.articleLink);
  writeNotNull('wikipedia', instance.wikipedia);
  writeNotNull('video_link', instance.videoLink);
  writeNotNull('youtube_id', instance.youtubeId);
  writeNotNull('flickr_images', instance.flickrImages);
  return val;
}
