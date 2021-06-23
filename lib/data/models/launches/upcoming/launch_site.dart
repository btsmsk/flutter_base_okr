import 'package:json_annotation/json_annotation.dart';

part 'launch_site.g.dart';

@JsonSerializable()
class LaunchSite {
  factory LaunchSite.fromJson(Map<String, dynamic> json) =>
      _$LaunchSiteFromJson(json);

  Map<String, dynamic> toJson(instance) => _$LaunchSiteToJson(this);

  @JsonKey(name: "site_id")
  String? siteId;
  @JsonKey(name: "site_name")
  String? siteName;
  @JsonKey(name: "site_name_long")
  String? siteNameLong;

  LaunchSite({this.siteId, this.siteName, this.siteNameLong});
}
