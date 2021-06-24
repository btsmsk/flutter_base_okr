import 'package:json_annotation/json_annotation.dart';

import 'cores.dart';


part 'first_stage.g.dart';

@JsonSerializable()
class FirstStage {

  @JsonKey(name: "cores")
  List<Cores>? cores;

  FirstStage({this.cores});

	factory FirstStage.fromJson(Map<String, dynamic> json) => _$FirstStageFromJson(json);
	Map<String, dynamic> toJson() => _$FirstStageToJson(this);
}