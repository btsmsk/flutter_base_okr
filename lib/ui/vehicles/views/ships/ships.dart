import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/ships_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/views/widgets/vehicle_list.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Ships extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [_buildMainContent()],
      ),
    );
  }

  Widget _buildMainContent() {
    return GetBuilder<ShipsController>(
        builder: (controller) => Container(
          child: controller.obx((state) {
            return VehicleListWidget(vehicleList: state ?? []);
          }, onError: (error) {
            return Center(
              child: Text(error.toString()),
            );
          },
              onLoading: Center(
                child: CircularProgressIndicator(
                  color: Colors.black45,
                ),
              )),
        ));
  }
}
