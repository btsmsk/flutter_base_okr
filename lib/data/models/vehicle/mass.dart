import 'package:json_annotation/json_annotation.dart';

part 'mass.g.dart';

@JsonSerializable()
class Mass {

	factory Mass.fromJson(Map<String, dynamic> json) => _$MassFromJson(json);
	Map<String, dynamic> toJson() => _$MassToJson(this);

  num? kg;
  num? lb;

  Mass({
      this.kg, 
      this.lb});
}