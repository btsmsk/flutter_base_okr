import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/data_source/local/theme_service.dart';
import 'package:flutter_base_okr/routes/app_pages.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:flutter_base_okr/utils/themes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'main_binding.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    theme: Themes.light,
    darkTheme: Themes.dark,
    themeMode: ThemeService().theme,
    initialBinding: MainBinding(),
    debugShowCheckedModeBanner: false,
    getPages: AppPages.routes,
    initialRoute: Routes.APP
  ));
}
