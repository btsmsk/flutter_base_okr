import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicle/dragon_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicle/thrusters.dart';
import 'package:flutter_base_okr/ui/widgets/header_swiper.dart';
import 'package:flutter_base_okr/ui/widgets/row/card_cell.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_container.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_item.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_layout.dart';
import 'package:flutter_base_okr/ui/widgets/sliver_bar.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class DragonDetail extends GetView {
  final DragonVehicle? dragon;

  const DragonDetail(this.dragon);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverBar(
              title: dragon?.name,
              header: SwiperHeader(
                urls: dragon?.flickrImages ?? [],
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () => Share.share('dragonName: ${dragon?.name}'),
                  tooltip: 'Share',
                ),
              ],
            ),
            SliverSafeArea(
              top: false,
              sliver: SliverToBoxAdapter(
                child: RowContainer(
                  children: [
                    _buildDescriptionCard(context),
                    _specsCard(context),
                    if (dragon?.thrusters!.isNotEmpty == true)
                      _thrustersCard(context, dragon?.thrusters ?? List.empty())
                  ],
                ),
              ),
            )
          ],
        ),
      );

  Widget _buildDescriptionCard(BuildContext context) => CardCell.body(
        context,
        title: 'Description',
        child: RowContainer(
          children: [
            RowItem.text('Maiden launch', dragon?.getDateTime()),
            RowItem.text(
              'Crew capasity',
              dragon?.getCrew(),
            ),
            RowItem.text(
              'Active',
              null,
              endIcon: dragon?.active == true
                  ? const IconProperties(
                      icon: Icons.check_circle, color: Colors.greenAccent)
                  : const IconProperties(
                      icon: Icons.cancel, color: Colors.redAccent),
            ),
            const Divider(),
            Text(dragon?.description ?? '')
          ],
        ),
      );

  Widget _specsCard(BuildContext context) => CardCell.body(
        context,
        title: 'Specifications',
        child: RowContainer(
          children: [
            RowItem.text('Launch payload', dragon?.getLaunchPayload()),
            RowItem.text('Return payload', dragon?.getReturnPayload()),
            const Divider(),
            RowItem.text('Height', dragon?.getDragonHeight()),
            RowItem.text('Diameter', dragon?.getDragonDiameter()),
            RowItem.text('Dry Weight', dragon?.getDragonDryWeight())
          ],
        ),
      );

  Widget _thrustersCard(BuildContext context, List<Thrusters> thrusters) =>
      CardCell.body(
        context,
        title: 'Thrusters',
        child: RowContainer(
          children: [
            for (final thruster in thrusters)
              _getThruster(
                thruster: thruster,
                isFirst: dragon?.thrusters!.first == thruster,
              ),
          ],
        ),
      );

  Widget _getThruster({required Thrusters thruster, required bool isFirst}) =>
      RowLayout(children: <Widget>[
        if (!isFirst) const Divider(),
        RowItem.text(
          'Model',
          thruster.type,
        ),
        RowItem.text(
          'Amount',
          thruster.amount.toString(),
        ),
        RowItem.text(
          'Primary Fuel',
          thruster.fuel2,
        ),
        RowItem.text(
          'Oxidizer',
          thruster.fuel1,
        ),
        RowItem.text('Thrust', thruster.getEngineThrust()),
        RowItem.text('Isp', thruster.getIsp())
      ]);
}
