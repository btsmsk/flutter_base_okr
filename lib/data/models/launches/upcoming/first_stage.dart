import 'package:json_annotation/json_annotation.dart';

import 'cores.dart';

part 'first_stage.g.dart';

@JsonSerializable()
class FirstStage {

	factory FirstStage.fromJson(Map<String, dynamic> json) => _$FirstStageFromJson(json);
	Map<String, dynamic> toJson( instance) => _$FirstStageToJson(this);

  Map<String, dynamic>? cores;

  FirstStage(
    this.cores);
}