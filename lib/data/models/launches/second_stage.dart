import 'package:json_annotation/json_annotation.dart';
import 'payloads.dart';

part 'second_stage.g.dart';

@JsonSerializable()
class SecondStage {
  factory SecondStage.fromJson(Map<String, dynamic> json) =>
      _$SecondStageFromJson(json);

  Map<String, dynamic> toJson() => _$SecondStageToJson(this);

  int? block;
  List<Payloads>? payloads;

  SecondStage(this.block, this.payloads);
}
