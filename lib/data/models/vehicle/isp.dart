import 'package:json_annotation/json_annotation.dart';

part 'isp.g.dart';

@JsonSerializable()
class Isp {

	factory Isp.fromJson(Map<String, dynamic> json) => _$IspFromJson(json);
	Map<String, dynamic> toJson() => _$IspToJson(this);
	@JsonKey(name: 'sea_level')
  num? seaLevel;
  num? vacuum;

  Isp({
      this.seaLevel, 
      this.vacuum});

}