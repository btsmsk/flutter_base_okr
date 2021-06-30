import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_base_okr/data/models/vehicle/volume.dart';

import 'cargo.dart';

part 'trunk.g.dart';

@JsonSerializable()
class Trunk {
  factory Trunk.fromJson(Map<String, dynamic> json) => _$TrunkFromJson(json);

  Map<String, dynamic> toJson() => _$TrunkToJson(this);

  @JsonKey(name: 'trunk_volume')
  Volume? trunkVolume;
  Cargo? cargo;

  Trunk({this.trunkVolume, this.cargo});
}
