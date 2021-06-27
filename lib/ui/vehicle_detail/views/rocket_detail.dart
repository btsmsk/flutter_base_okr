import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicles/rocket_vehicle.dart';
import 'package:flutter_base_okr/ui/widgets/row/card_cell.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_container.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_item.dart';
import 'package:flutter_base_okr/ui/widgets/sliver_bar.dart';
import 'package:flutter_base_okr/utils/date.dart';
import 'package:flutter_base_okr/utils/number.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';


class RocketDetail extends GetView {
  final RocketVehicle? rocket;

  const RocketDetail(this.rocket);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverBar(
              title: rocket?.rocketName,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () =>
                      Share.share('rocketName: ${rocket?.rocketName}'),
                  tooltip: 'Share',
                )
              ],
            ),
            SliverSafeArea(
              top: false,
              sliver: SliverToBoxAdapter(
                child: RowContainer(
                  children: [
                    _buildGeneralInfoCard(context),
                  ],
                ),
              ),
            )
          ],
        ),
      );

  Widget _buildGeneralInfoCard(BuildContext context) => CardCell.body(context,
      title: 'Description',
      child: RowContainer(
        children: [
          RowItem.text(
              'Maiden launch', rocket?.firstFlight != null ? defaultDateFormatter.format(rocket!.firstFlight!) : ''),
          RowItem.text(
            'Launch cost',
            formatCurrency.format(rocket?.costPerLaunch),
          ),
          RowItem.text(
            'Success Rate',
            '%${rocket?.successRatePct}',
            endIcon:
                const IconProperties(icon: Icons.star, color: Colors.amber),
          ),
          RowItem.text(
            'Active',
            null,
            endIcon: rocket?.active == true
                ? const IconProperties(
                    icon: Icons.cancel, color: Colors.redAccent)
                : const IconProperties(
                    icon: Icons.check_circle, color: Colors.greenAccent),
          ),
          const Divider(),
          Text(rocket?.description ?? '')
        ],
      ));
}
