import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicles/rocket_vehicle.dart';
import 'package:flutter_base_okr/ui/home/views/widgets/vehicle_cell.dart';

class RocketListWidget extends StatelessWidget {
  final List<RocketVehicle> rocketList;

  const RocketListWidget({Key? key, required this.rocketList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return rocketList.isNotEmpty
        ? ListView.separated(
            itemCount: rocketList.length,
            separatorBuilder: (context, position) {
              return Divider();
            },
            itemBuilder: (context, position) {
              return _buildListItem(rocketList.elementAt(position));
            },
          )
        : Center(
            child: Text(
              "No item",
            ),
          );
  }

  Widget _buildListItem(RocketVehicle rocket) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.toDouble())
      ),
      child: VehicleCell(rocket),
    );
  }
}
