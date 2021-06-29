import 'package:flutter_base_okr/data/models/vehicle/vehicle.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';

class VehicleDetailController extends GetxController {
  Vehicle vehicle = Get.arguments;
}