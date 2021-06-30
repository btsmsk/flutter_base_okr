import 'package:flutter_base_okr/ui/dashboard/bindings/dashboard_binding.dart';
import 'package:flutter_base_okr/ui/dashboard/views/dashboard.dart';
import 'package:flutter_base_okr/ui/launches/views/upcoming/bindings/upcoming_details_binding.dart';
import 'package:flutter_base_okr/ui/launches/views/upcoming/views/upcoming_details.dart';
import 'package:flutter_base_okr/ui/vehicle_detail/bindings/vehicles_detail_binding.dart';
import 'package:flutter_base_okr/ui/vehicle_detail/views/vehicle_detail.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: Routes.APP, page: () => Dashboard(), binding: DashboardBinding()),
    GetPage(
        name: Routes.VEHICLE_DETAIL,
        page: () => VehicleDetail(),
        binding: VehicleDetailBinding()),
    GetPage(
        name: Routes.UPCOMING_DETAIL,
        page: () => UpcomingDetails(),
        binding: UpcomingDetailsBinding())
  ];
}
