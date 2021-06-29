import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_base_okr/data/models/vehicle/dragon_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicle/rocket_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicle/ship_vehicle.dart';
import 'package:flutter_base_okr/ui/vehicle_detail/controllers/vehicle_detail_controller.dart';
import 'package:flutter_base_okr/ui/vehicle_detail/views/rocket_detail.dart';
import 'package:flutter_base_okr/ui/vehicle_detail/views/ship_detail.dart';
import 'package:get/get.dart';

import 'dragon_detail.dart';

class VehicleDetail extends GetView<VehicleDetailController> {
  @override
  Widget build(BuildContext context) {
    switch(controller.vehicle.type) {
      case 'rocket':
        return RocketDetail(controller.vehicle as RocketVehicle);
      case 'capsule':
        return DragonDetail(controller.vehicle as DragonVehicle);
      case 'ship':
        return ShipDetail(controller.vehicle as ShipVehicle);
      default:
        return const Center(
          child: Text(''),
        );
    }
  }
}