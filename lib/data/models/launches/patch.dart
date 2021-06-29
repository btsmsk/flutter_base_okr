import 'package:json_annotation/json_annotation.dart';

part 'patch.g.dart';

@JsonSerializable()
class Patch {
  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);

  Map<String, dynamic> toJson() => _$PatchToJson(this);

  String? small;
  String? large;

  Patch({this.small, this.large});
}
