import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/repository/local_cache_repository.dart';
import 'package:flutter_base_okr/routes/app_pages.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:flutter_base_okr/utils/pref_keys.dart';
import 'package:flutter_base_okr/utils/themes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'main_binding.dart';

void main() async {
  await GetStorage.init();
  MainBinding().dependencies();
  runApp(GetMaterialApp(
      initialBinding: MainBinding(),
      title: 'Flutter Demo',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: _getCurrentTheme(),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: Routes.APP));
}

ThemeMode _getCurrentTheme() => Get.find<LocalCacheRepository>()
        .getBool(GetStoragePreferencesKeys.KEY_IS_DARK_MODE, false)
    ? ThemeMode.dark
    : ThemeMode.light;
