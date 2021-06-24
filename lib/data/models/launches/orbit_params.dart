import 'package:json_annotation/json_annotation.dart';

part 'orbit_params.g.dart';

@JsonSerializable()
class OrbitParams {

	factory OrbitParams.fromJson(Map<String, dynamic> json) => _$OrbitParamsFromJson(json);
	Map<String, dynamic> toJson( instance) => _$OrbitParamsToJson(this);

  @JsonKey(name: "reference_system")
  String? referenceSystem;
  String? regime;

  OrbitParams({this.referenceSystem, this.regime});
}
