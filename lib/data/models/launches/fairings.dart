import 'package:json_annotation/json_annotation.dart';

part 'fairings.g.dart';

@JsonSerializable()
class Fairings {
  factory Fairings.fromJson(Map<String, dynamic> json) =>
      _$FairingsFromJson(json);

  Map<String, dynamic> toJson() => _$FairingsToJson(this);

  bool? reused;
  bool? recoveryAttempt;
  bool? recovered;
  List<String>? ships;

  Fairings({this.reused, this.recoveryAttempt, this.recovered, this.ships});
}
