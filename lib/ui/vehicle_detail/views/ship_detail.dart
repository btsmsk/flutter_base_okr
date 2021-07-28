import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/launches/launches.dart';
import 'package:flutter_base_okr/data/models/vehicle/ship_vehicle.dart';
import 'package:flutter_base_okr/ui/vehicle_detail/controllers/ship_detail_controller.dart';
import 'package:flutter_base_okr/ui/widgets/row/card_cell.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_container.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_item.dart';
import 'package:flutter_base_okr/ui/widgets/sliver_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class ShipDetail extends GetView<ShipDetailController> {
  final ShipVehicle? ship;

  const ShipDetail(this.ship);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverBar(
              title: ship?.name,
              header: InkWell(
                onTap: () => {},
                child: ship?.image != null
                    ? CachedNetworkImage(
                        imageUrl: ship?.image ?? '', fit: BoxFit.cover)
                    : SvgPicture.asset(
                        'assets/icons/patch.svg',
                        colorBlendMode: BlendMode.srcATop,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black45
                            : Colors.black26,
                      ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () => Share.share('shipName: ${ship?.name}'),
                  tooltip: 'Share',
                ),
              ],
            ),
            SliverSafeArea(
              top: false,
              sliver: SliverToBoxAdapter(
                child: RowContainer(
                  children: [
                    _buildGeneralInfoCard(context),
                    _specsCard(context),
                    controller.obx((state) => _launchesCard(state, context))
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  Widget _buildGeneralInfoCard(BuildContext context) => CardCell.body(
        context,
        title: 'Description',
        child: RowContainer(
          children: [
            RowItem.text('Home port', ship?.homePort),
            RowItem.text(
              'Build date',
              ship?.yearBuilt.toString(),
            ),
            RowItem.text(
              'Feature',
              ship?.usage,
            ),
            RowItem.text(
              'Model',
              ship?.model,
            )
          ],
        ),
      );

  Widget _specsCard(BuildContext context) => CardCell.body(
        context,
        title: 'Specifications',
        child: RowContainer(
          children: [
            RowItem.text('Primary role', ship?.roles?.first),
            if (ship?.hasSeveralRoles == true)
              RowItem.text('Secondary role', ship?.roles?.last),
            RowItem.text('Status', ship?.getStatus()),
            const Divider(),
            RowItem.text('Weight', ship?.getShipWeightKg()),
            RowItem.text('Current speed', ship?.getCurrentSpeed()),
          ],
        ),
      );

  Widget _launchesCard(List<Launches> launches, BuildContext context) =>
      launches.isNotEmpty
          ? CardCell.body(
              context,
              title: 'Missions',
              child: RowContainer(
                children: [
                  for (final item in launches)
                    RowItem.tap(
                      item.formattedflightNumber,
                      item.name ?? '',
                      onTap: () => {

                      },
                    ),
                ],
              ),
            )
          : const Divider();
}
