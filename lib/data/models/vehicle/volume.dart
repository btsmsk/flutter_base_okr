import 'package:json_annotation/json_annotation.dart';

part 'volume.g.dart';

@JsonSerializable()
class Volume {

	factory Volume.fromJson(Map<String, dynamic> json) => _$VolumeFromJson(json);
	Map<String, dynamic> toJson() => _$VolumeToJson(this);

	@JsonKey(name: 'cubic_meters')
  num? cubicMeters;
  @JsonKey(name: 'cubic_feet')
  num? cubicFeet;

  Volume({
      this.cubicMeters, 
      this.cubicFeet});
}