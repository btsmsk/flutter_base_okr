import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicles/vehicle.dart';
import 'package:flutter_base_okr/ui/common_widgets/image_leading.dart';

import '../../../common_widgets/list_cell.dart';

class VehicleCell extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleCell(this.vehicle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ListCell(
          leading: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: ImageLeading.small(vehicle.photos?.first ?? ""),
          ),
          title: vehicle.name,
          subtitle: vehicle.firstFlight.toString(),
          onTap: () => {
            // no-op
          }),
    ]);
  }
}
