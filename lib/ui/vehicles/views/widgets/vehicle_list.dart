import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicle/vehicle.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:flutter_base_okr/ui/widgets/list/image_leading.dart';
import 'package:flutter_base_okr/ui/widgets/list/list_cell.dart';
import 'package:flutter_base_okr/utils/date.dart';
import 'package:flutter_base_okr/utils/dimens.dart';
import 'package:get/get.dart';

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
                _buildListItem(vehicleList.elementAt(position)),
          ),
        )
      : const Center(
          child: Text(
            'No item',
          ),
        );

  Widget _buildListItem(Vehicle vehicle) => Card(
        elevation: Dimens.SIZE_8,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.DEFAULT_CARD_RADIUS)),
        child: Column(
          children: <Widget>[
            ListCell(
              leading: ClipRRect(
                borderRadius:
                    const BorderRadius.all(Radius.circular(Dimens.SIZE_8)),
                child: ImageLeading.load(vehicle.photos?.first, Dimens.SIZE_40),
              ),
              title: vehicle.name,
              subtitle: vehicle.dateTime != null
                  ? 'First flight: ${defaultDateFormatter.format(vehicle.dateTime!)}'
                  : '',
              onTap: () =>
                  Get.toNamed(Routes.VEHICLE_DETAIL, arguments: vehicle),
            )
          ],
        ),
      );
}
