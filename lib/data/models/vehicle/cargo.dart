import 'package:json_annotation/json_annotation.dart';

part 'cargo.g.dart';

@JsonSerializable()
class Cargo {

	factory Cargo.fromJson(Map<String, dynamic> json) => _$CargoFromJson(json);
	Map<String, dynamic> toJson() => _$CargoToJson(this);

	@JsonKey(name: 'solar_array')
  num? solarArray;
  @JsonKey(name: 'unpressurized_cargo')
  bool? unpressurizedCargo;

  Cargo({
      this.solarArray, 
      this.unpressurizedCargo});
}