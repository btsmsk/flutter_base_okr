import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/routes/app_pages.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:get/get.dart';

import 'main_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.white),
        initialBinding: MainBinding(),
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
        initialRoute: Routes.ROOT),
  );
}
