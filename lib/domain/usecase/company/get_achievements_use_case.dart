import 'package:flutter_base_okr/data/repository/achievements_repository.dart';

class GetAchievementsUseCase {
  final AchievementsRepository repository;

  GetAchievementsUseCase({required this.repository});

  Future run() async => repository.getAchievementList();
}
