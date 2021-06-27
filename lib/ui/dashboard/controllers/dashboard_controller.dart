import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter_base_okr/data/repository/local_cache_repository.dart';
import 'package:flutter_base_okr/utils/pref_keys.dart';
import 'package:flutter_base_okr/utils/themes.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  LocalCacheRepository localCacheRepository;
  int currentIndex = 0;
  ThemeModes themeMode = ThemeModes.LIGHT;

  DashboardController({required this.localCacheRepository}) {
    setThemeMode();
  }

  ThemeData get currentTheme =>
      themeMode == ThemeModes.DARK ? Themes.darkTheme : Themes.lightTheme;

  void setCurrentTab(int index) {
    currentIndex = index;
    update();
  }

  Future<void> changeTheme(ThemeModes themeModes) async {
    await localCacheRepository.setBool(
        SharedPreferencesKeys.KEY_IS_DARK_MODE, themeModes == ThemeModes.DARK);
    themeMode = themeModes;
    update();
  }

  void setThemeMode() async {
    themeMode = await localCacheRepository.getBool(
        SharedPreferencesKeys.KEY_IS_DARK_MODE, false)
        ? ThemeModes.DARK
        : ThemeModes.LIGHT;
    update();
  }
}
