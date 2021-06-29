import 'package:json_annotation/json_annotation.dart';
import 'composite_fairing.dart';

part 'payloads.g.dart';

@JsonSerializable()
class Payloads {

	factory Payloads.fromJson(Map<String, dynamic> json) => _$PayloadsFromJson(json);
	Map<String, dynamic> toJson() => _$PayloadsToJson(this);

	@JsonKey(name: 'composite_fairing')
  CompositeFairing? compositeFairing;
  @JsonKey(name: 'option_1')
  String? option1;

  Payloads({
      this.compositeFairing, 
      this.option1});

}