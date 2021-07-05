import 'package:flutter/material.dart';
import 'package:flutter_base_okr/routes/app_pages.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:get/get.dart';

import 'main_binding.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primaryColor: Colors.white
    ),
    initialBinding: MainBinding(),
    debugShowCheckedModeBanner: false,
    getPages: AppPages.routes,
    initialRoute: Routes.APP
  ));
}
