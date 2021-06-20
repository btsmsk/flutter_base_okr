import 'package:flutter_base_okr/ui/dashboard/bindings/dashboard_binding.dart';
import 'package:flutter_base_okr/ui/dashboard/views/dashboard.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: Routes.APP, page: () => Dashboard(), binding: DashboardBinding()),
  ];
}
