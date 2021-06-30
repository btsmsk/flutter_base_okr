import 'package:json_annotation/json_annotation.dart';

part 'diameter.g.dart';

@JsonSerializable()
class Diameter {

	factory Diameter.fromJson(Map<String, dynamic> json) => _$DiameterFromJson(json);
	Map<String, dynamic> toJson() => _$DiameterToJson(this);

  num? meters;
  num? feet;

  Diameter({
      this.meters, 
      this.feet});
}