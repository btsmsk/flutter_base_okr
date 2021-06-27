import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicles/vehicle.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:flutter_base_okr/ui/widgets/list/action_button.dart';
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
              const EdgeInsets.only(left: Dimens.SMALL, right: Dimens.SMALL),
          child: ListView.separated(
            itemCount: vehicleList.length,
            separatorBuilder: (context, position) =>
                const SizedBox(height: Dimens.MEDIUM),
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
        elevation: Dimens.SMALL,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.DEFAULT_CARD_RADIUS)),
        child: Column(
          children: <Widget>[
            ListCell(
              leading: ClipRRect(
                borderRadius:
                    const BorderRadius.all(Radius.circular(Dimens.SMALL)),
                child: ImageLeading.small(vehicle.photos?.first),
              ),
              title: vehicle.name,
              subtitle: vehicle.firstFlight != null
                  ? 'First flight: ${defaultDateFormatter.format(vehicle.firstFlight!)}'
                  : '',
              actions: [
                ActionButton(
                  icon: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  label: 'Star',
                  backgroundColor: Colors.grey.shade200,
                  onTap: () => {
                    // no-op
                  },
                )
              ],
              onTap: () =>
                  Get.toNamed(Routes.VEHICLE_DETAIL, arguments: vehicle),
            )
          ],
        ),
      );
}
