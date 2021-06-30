import 'package:json_annotation/json_annotation.dart';

part 'achievement.g.dart';

/**
 * Created by Emre Akçadağ on 30.06.2021
 */
@JsonSerializable()
class Achievement {
  Achievement({
    this.id,
    this.title,
    this.details,
    this.url,
    this.date,
  });

  final String? id, title, details, url;
  final DateTime? date;

  factory Achievement.fromJson(Map<String, dynamic>? data) => _$AchievementFromJson(data ?? {});

  static List<Achievement?>? fromJsonList(List? data) => data?.map((e) => e == null ? null : Achievement.fromJson(Map<String, dynamic>.from(e))).toList();

  Map<String, dynamic>? toJson() => _$AchievementToJson(this);
}
