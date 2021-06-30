import 'package:flutter_base_okr/data/data_source/remote/company/achievements_remote_data_source.dart';
import 'package:flutter_base_okr/data/models/company/achievement.dart';

class AchievementsRepository {
  final AchievementsRemoteDataSource achievementsRemoteDataSource;

  AchievementsRepository({required this.achievementsRemoteDataSource});

  Future<List<Achievement?>?> getAchievementList() async => achievementsRemoteDataSource.getAchievementsList();
}
