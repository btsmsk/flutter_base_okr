import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/repository/local_cache_repository.dart';
import 'package:flutter_base_okr/utils/pref_keys.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  LocalCacheRepository localCacheRepository;
  int currentIndex = 0;

  DashboardController({required this.localCacheRepository});

  void setCurrentTab(int index) {
    currentIndex = index;
    update();
  }

  Future<void> changeTheme() async {
    var currentTheme = ThemeMode.dark;
    if (Get.isDarkMode) {
      currentTheme = ThemeMode.light;
    }
    Get.changeThemeMode(currentTheme);
    await localCacheRepository.setBool(
        GetStoragePreferencesKeys.KEY_IS_DARK_MODE,
        currentTheme == ThemeMode.dark);
  }
}
