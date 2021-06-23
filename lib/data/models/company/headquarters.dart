import 'package:json_annotation/json_annotation.dart';

part 'headquarters.g.dart';
@JsonSerializable()
class Headquarters {

	factory Headquarters.fromJson(Map<String, dynamic> json) => _$HeadquartersFromJson(json);
	Map<String, dynamic> toJson( instance) => _$HeadquartersToJson(this);

  String? address;
  String? city;
  String? state;

  Headquarters({
      this.address, 
      this.city, 
      this.state});
}