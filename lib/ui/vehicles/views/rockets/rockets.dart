import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicle/rocket_vehicle.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/rockets_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/views/widgets/vehicle_item.dart';
import 'package:flutter_base_okr/ui/vehicles/views/widgets/vehicle_list.dart';
import 'package:flutter_base_okr/ui/widgets/search/search_page.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Rockets extends GetView<RocketsController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [_buildMainContent()],
        ),
        floatingActionButton: controller.obx(
          (state) => FloatingActionButton(
            heroTag: null,
            tooltip: 'Search',
            onPressed: () => showSearch(
              context: context,
              delegate: SearchPage<RocketVehicle>(
                items: state,
                searchLabel: 'Search Rocket',
                filter: (vehicle) => [
                  vehicle.name,
                  vehicle.type,
                ],
                builder: (vehicle) => VehicleItem(vehicle: vehicle),
              ),
            ),
            child: const Icon(Icons.search),
          ),
        ),
      );

  Widget _buildMainContent() => Container(
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
      );
}
