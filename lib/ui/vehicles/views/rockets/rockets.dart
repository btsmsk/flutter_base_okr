import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/rockets_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/views/widgets/vehicle_list.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Rockets extends GetView {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [_buildMainContent()],
        ),
      );

  Widget _buildMainContent() => GetBuilder<RocketsController>(
        builder: (controller) => Container(
          child: controller.obx(
            (state) => VehicleListWidget(vehicleList: state ?? []),
            onError: (error) => Center(
              child: Text(error.toString()),
            ),
            onLoading: const Center(
              child: CircularProgressIndicator(
                color: Colors.black45,
              ),
            ),
          ),
        ),
      );
}
