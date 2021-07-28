import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicle/vehicle.dart';
import 'package:flutter_base_okr/ui/vehicles/views/widgets/vehicle_item.dart';
import 'package:flutter_base_okr/utils/dimens.dart';

class VehicleListWidget extends StatelessWidget {
  final List<Vehicle> vehicleList;

  const VehicleListWidget({Key? key, required this.vehicleList})
      : super(key: key);

  @override
  Widget build(BuildContext context) => vehicleList.isNotEmpty
      ? Padding(
          padding:
              const EdgeInsets.only(left: Dimens.SIZE_8, right: Dimens.SIZE_8),
          child: ListView.separated(
            itemCount: vehicleList.length,
            separatorBuilder: (context, position) =>
                const SizedBox(height: Dimens.SIZE_16),
            itemBuilder: (context, position) =>
                VehicleItem(vehicle: vehicleList.elementAt(position)),
          ),
        )
      : const Center(
          child: Text(
            'No item',
          ),
        );
}
