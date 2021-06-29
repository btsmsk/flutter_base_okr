import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_base_okr/data/models/vehicle/volume.dart';

import 'payload_volume.dart';

part 'pressurized_capsule.g.dart';

@JsonSerializable()
class PressurizedCapsule {

	factory PressurizedCapsule.fromJson(Map<String, dynamic> json) => _$PressurizedCapsuleFromJson(json);
	Map<String, dynamic> toJson() => _$PressurizedCapsuleToJson(this);

	@JsonKey(name: 'payload_volume')
  Volume? payloadVolume;

  PressurizedCapsule({
      this.payloadVolume});

}