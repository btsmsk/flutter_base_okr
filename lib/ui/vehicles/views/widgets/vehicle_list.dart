import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicles/vehicle.dart';
import 'package:flutter_base_okr/ui/widgets/list/image_leading.dart';
import 'package:flutter_base_okr/ui/widgets/list/list_cell.dart';
import 'package:flutter_base_okr/utils/dimens.dart';

class VehicleListWidget extends StatelessWidget {
  final List<Vehicle> vehicleList;

  const VehicleListWidget({Key? key, required this.vehicleList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return vehicleList.isNotEmpty
        ? ListView.separated(
            itemCount: vehicleList.length,
            separatorBuilder: (context, position) {
              return SizedBox(height: Dimens.MEDIUM);
            },
            itemBuilder: (context, position) {
              return _buildListItem(vehicleList.elementAt(position));
            },
          )
        : Center(
            child: Text(
              "No item",
            ),
          );
  }

  Widget _buildListItem(Vehicle vehicle) {
    return Card(
      elevation: Dimens.SMALL,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.MEDIUM.toDouble())),
      child: Column(children: <Widget>[
        ListCell(
            leading: ClipRRect(
              borderRadius:
                  const BorderRadius.all(Radius.circular(Dimens.SMALL)),
              child: ImageLeading.small(vehicle.photos?.first ?? ""),
            ),
            title: vehicle.name,
            subtitle: vehicle.firstFlight.toString(),
            onTap: () => {
                  // no-op
                }),
      ]),
    );
  }
}
