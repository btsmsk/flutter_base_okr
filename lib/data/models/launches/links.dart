import 'package:json_annotation/json_annotation.dart';

import 'flickr.dart';
import 'patch.dart';
import 'reddit.dart';

part 'links.g.dart';

@JsonSerializable()
class Links {

	factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

	Map<String, dynamic> toJson() => _$LinksToJson(this);

  Patch? patch;
  Reddit? reddit;
  Flickr? flickr;
  String? presskit;
  String? webcast;
  String? youtubeId;
  String? article;
  String? wikipedia;

  Links({
      this.patch, 
      this.reddit, 
      this.flickr, 
      this.presskit, 
      this.webcast, 
      this.youtubeId, 
      this.article, 
      this.wikipedia});
}