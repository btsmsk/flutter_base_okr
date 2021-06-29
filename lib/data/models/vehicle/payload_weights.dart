import 'package:flutter_base_okr/utils/number.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payload_weights.g.dart';

@JsonSerializable()
class PayloadWeights {

	factory PayloadWeights.fromJson(Map<String, dynamic> json) => _$PayloadWeightsFromJson(json);
	Map<String, dynamic> toJson() => _$PayloadWeightsToJson(this);
  String? id;
  String? name;
  num? kg;
  num? lb;

  PayloadWeights({
      this.id, 
      this.name, 
      this.kg, 
      this.lb});

  String getFormattedKg() => '${formatDecimal.format(kg)} kg';
}