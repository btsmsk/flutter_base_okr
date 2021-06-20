import 'package:flutter/material.dart';
import 'package:flutter_base_okr/routes/app_pages.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    getPages: AppPages.routes,
    initialRoute: Routes.APP,
  ));
}
