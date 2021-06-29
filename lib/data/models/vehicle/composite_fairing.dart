import 'package:json_annotation/json_annotation.dart';
import 'diameter.dart';

part 'composite_fairing.g.dart';

@JsonSerializable()
class CompositeFairing {

	factory CompositeFairing.fromJson(Map<String, dynamic> json) => _$CompositeFairingFromJson(json);
	Map<String, dynamic> toJson() => _$CompositeFairingToJson(this);

  Diameter? height;
  Diameter? diameter;

  CompositeFairing({
      this.height, 
      this.diameter});
}