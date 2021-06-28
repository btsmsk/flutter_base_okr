import 'package:json_annotation/json_annotation.dart';

part 'reddit.g.dart';
@JsonSerializable()
class Reddit {

	factory Reddit.fromJson(Map<String, dynamic> json) => _$RedditFromJson(json);

	Map<String, dynamic> toJson() => _$RedditToJson(this);

  String? campaign;
  String? launch;
  String? media;
  String? recovery;

  Reddit({
      this.campaign, 
      this.launch, 
      this.media, 
      this.recovery});
}