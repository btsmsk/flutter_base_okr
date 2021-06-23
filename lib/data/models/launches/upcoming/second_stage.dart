import 'package:json_annotation/json_annotation.dart';
import 'payloads.dart';

part 'second_stage.g.dart';

@JsonSerializable()
class SecondStage {
  factory SecondStage.fromJson(Map<String, dynamic> json) =>
      _$SecondStageFromJson(json);

  Map<String, dynamic> toJson(instance) => _$SecondStageToJson(this);

  int? block;
  Map<String, dynamic>? payloads;

  SecondStage(this.block, this.payloads);
}
