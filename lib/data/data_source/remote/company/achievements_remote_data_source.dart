import 'dart:async';

import 'package:flutter_base_okr/data/core/network/endpoints.dart';
import 'package:flutter_base_okr/data/models/company/achievement.dart';
import 'package:get/get.dart';

class AchievementsRemoteDataSource extends GetConnect {
  Future<List<Achievement?>?> getAchievementsList() async {
    final completer = Completer<List<Achievement?>?>();

    final response = await get<List<Achievement?>?>(Endpoints.achievements, decoder: (body) => Achievement.fromJsonList(body));

    completer.complete(response.body);

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return completer.future;
  }
}
