import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicle/vehicle.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:flutter_base_okr/ui/widgets/list/image_leading.dart';
import 'package:flutter_base_okr/ui/widgets/list/list_cell.dart';
import 'package:flutter_base_okr/utils/date.dart';
import 'package:flutter_base_okr/utils/dimens.dart';
import 'package:get/get.dart';

class VehicleItem extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleItem({Key? key, required this.vehicle})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
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