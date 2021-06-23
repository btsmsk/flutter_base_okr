import 'package:json_annotation/json_annotation.dart';

part 'links.g.dart';

@JsonSerializable(explicitToJson: true)
class Links {
  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson(instance) => _$LinksToJson(this);

  @JsonKey(name: "mission_patch")
  String? missionPatch;
  @JsonKey(name: "mission_patch_small")
  String? missionPatchSmall;
  @JsonKey(name: "reddit_campaign")
  String? redditCampaign;
  @JsonKey(name: "reddit_launch")
  String? redditLaunch;
  @JsonKey(name: "reddit_recovery")
  String? redditRecovery;
  @JsonKey(name: "reddit_media")
  String? redditMedia;
  String? presskit;
  @JsonKey(name: "article_link")
  String? articleLink;
  String? wikipedia;
  @JsonKey(name: "video_link")
  String? videoLink;
  @JsonKey(name: "youtube_id")
  String? youtubeId;
  @JsonKey(name: "flickr_images")
  Map<String, dynamic>? flickrImages;

  Links(
      this.missionPatch,
      this.missionPatchSmall,
      this.redditCampaign,
      this.redditLaunch,
      this.redditRecovery,
      this.redditMedia,
      this.presskit,
      this.articleLink,
      this.wikipedia,
      this.videoLink,
      this.youtubeId,
      this.flickrImages);
}
