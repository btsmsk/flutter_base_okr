import 'package:json_annotation/json_annotation.dart';

part 'timeline.g.dart';

@JsonSerializable(explicitToJson: true)
class Timeline {
  factory Timeline.fromJson(Map<String, dynamic> json) =>
      _$TimelineFromJson(json);

  Map<String, dynamic>? toJson(instance) => _$TimelineToJson(this);

  @JsonKey(name: "webcast_liftoff")
  int? webcastLiftoff;

  Timeline({this.webcastLiftoff});
}
