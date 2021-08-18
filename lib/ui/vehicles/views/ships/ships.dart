import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicle/ship_vehicle.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/ships_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/views/widgets/vehicle_item.dart';
import 'package:flutter_base_okr/ui/vehicles/views/widgets/vehicle_list.dart';
import 'package:flutter_base_okr/ui/widgets/info_widget.dart';
import 'package:flutter_base_okr/ui/widgets/search/search_page.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Ships extends GetView<ShipsController> {
  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: () async {
          controller.getShips();
        },
        child: Scaffold(
          body: Stack(
            children: [_buildMainContent()],
          ),
          floatingActionButton: controller.obx(
            (state) => FloatingActionButton(
              heroTag: null,
              tooltip: 'Search',
              onPressed: () => showSearch(
                context: context,
                delegate: SearchPage<ShipVehicle>(
                  items: state,
                  searchLabel: 'Search Ship',
                  filter: (vehicle) => [
                    vehicle.name,
                    vehicle.type,
                  ],
                  builder: (vehicle) => VehicleItem(vehicle: vehicle),
                  suggestion: InfoView(
                    title: Text('Ship',
                        style: Theme.of(context).textTheme.headline6),
                    subtitle: Text('Search',
                        style: Theme.of(context).textTheme.subtitle1),
                    header: const Icon(Icons.search),
                  ),
                  failure: InfoView(
                    title: Obx(() => Text('"${controller.searchQuery.value}"',
                        style: Theme.of(context).textTheme.headline6)),
                    subtitle: Text('Not found',
                        style: Theme.of(context).textTheme.subtitle1),
                    header: const Icon(Icons.sentiment_dissatisfied),
                  ),
                  onQueryUpdate: (query) {
                    controller.searchQuery.value = query;
                  },
                ),
              ),
              child: const Icon(Icons.search),
            ),
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
            child: CircularProgressIndicator(),
          ),
        ),
      );
}
