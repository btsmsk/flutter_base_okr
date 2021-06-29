import 'package:json_annotation/json_annotation.dart';

part 'flickr.g.dart';
@JsonSerializable()
class Flickr {

	factory Flickr.fromJson(Map<String, dynamic> json) => _$FlickrFromJson(json);
	Map<String, dynamic> toJson() => _$FlickrToJson(this);

  List<String>? small;
  List<String>? original;

  Flickr({
      this.small, 
      this.original});
}