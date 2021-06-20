import 'package:flutter_base_okr/modules/home/bindings/home_binding.dart';
import 'package:flutter_base_okr/modules/home/views/home.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
