import 'package:flutter_base_okr/data/data_source/remote/upcoming/upcoming_remote_data_source.dart';
import 'package:flutter_base_okr/data/data_source/remote/vehicle/vehicle_remote_data_source.dart';
import 'package:flutter_base_okr/data/repository/launches_repository.dart';
import 'package:flutter_base_okr/data/repository/vehicle_repository.dart';
import 'package:flutter_base_okr/domain/usecase/launches/upcoming/upcoming_launches_use_case.dart';
import 'package:flutter_base_okr/domain/usecase/vehicles/get_dragons.dart';
import 'package:flutter_base_okr/domain/usecase/vehicles/get_rockets.dart';
import 'package:flutter_base_okr/domain/usecase/vehicles/get_ships.dart';
import 'package:flutter_base_okr/ui/company/bindings/company_binding.dart';
import 'package:flutter_base_okr/ui/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter_base_okr/ui/home/controllers/home_controller.dart';
import 'package:flutter_base_okr/ui/launches/controllers/launches_controller.dart';
import 'package:flutter_base_okr/ui/launches/views/upcoming/controllers/upcoming_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/dragons_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/rockets_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/ships_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/vehicles_controller.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    // Dashboard
    Get.lazyPut<DashboardController>(() => DashboardController());
    // Home
    HomeBinding().dependencies();
    // Vehicles
    VehiclesBinding().dependencies();
    VehicleDetailBinding().dependencies();
    // Launches
    LaunchesBinding().dependencies();
    // Company
    CompanyBinding().dependencies();
  }
}
