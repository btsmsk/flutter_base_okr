import 'package:json_annotation/json_annotation.dart';

import 'first_stage.dart';
import 'second_stage.dart';
import 'fairings.dart';

part 'rocket.g.dart';

@JsonSerializable()
class Rocket {
  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);
  Map<String, dynamic> toJson() => _$RocketToJson(this);

  @JsonKey(name: "rocket_id")
  String? rocketId;
  @JsonKey(name: "rocket_name")
  String? rocketName;
  @JsonKey(name: "rocket_type")
  String? rocketType;
  @JsonKey(name: "first_stage")
  FirstStage? firstStage;
  @JsonKey(name: "second_stage")
  SecondStage? secondStage;

  Rocket(this.rocketId, this.rocketName, this.rocketType, this.firstStage,
      this.secondStage);
}
