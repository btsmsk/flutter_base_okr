import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicle/first_stage.dart';
import 'package:flutter_base_okr/data/models/vehicle/rocket_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicle/second_stage.dart';
import 'package:flutter_base_okr/ui/widgets/header_swiper.dart';
import 'package:flutter_base_okr/ui/widgets/row/card_cell.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_container.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_item.dart';
import 'package:flutter_base_okr/ui/widgets/sliver_bar.dart';
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
              title: rocket?.name,
              header: SwiperHeader(
                urls: rocket?.flickrImages ?? [],
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () => Share.share('rocketName: ${rocket?.name}'),
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
                    _specsCard(context),
                    if (rocket?.payloadWeights != null) _payloadsCard(context),
                    _stages(context),
                    if (rocket?.engines != null) _enginesCard(context),
                  ],
                ),
              ),
            )
          ],
        ),
      );

  Widget _buildGeneralInfoCard(BuildContext context) => CardCell.body(
        context,
        title: 'Description',
        child: RowContainer(
          children: [
            RowItem.text('Maiden launch', rocket?.getDateTime()),
            RowItem.text(
              'Launch cost',
              rocket?.getFormattedCost(),
            ),
            RowItem.text(
              'Success Rate',
              rocket?.getSuccessRate(),
              endIcon:
                  const IconProperties(icon: Icons.star, color: Colors.amber),
            ),
            RowItem.text(
              'Active',
              null,
              endIcon: rocket?.active == true
                  ? const IconProperties(
                      icon: Icons.check_circle, color: Colors.greenAccent)
                  : const IconProperties(
                      icon: Icons.cancel, color: Colors.redAccent),
            ),
            const Divider(),
            Text(rocket?.description ?? '')
          ],
        ),
      );

  Widget _specsCard(BuildContext context) => CardCell.body(
        context,
        title: 'Specifications',
        child: RowContainer(
          children: [
            RowItem.text('Rocket stages', rocket?.getStagesInfo()),
            const Divider(),
            RowItem.text('Height', rocket?.getRocketHeight()),
            RowItem.text('Diameter', rocket?.getRocketDiameter()),
            RowItem.text('Weight', rocket?.getRocketMass()),
            const Divider(),
            RowItem.text('Fairing height', rocket?.getFairingHeight()),
            RowItem.text('Fairing diameter', rocket?.getFairingDiameter()),
          ],
        ),
      );

  Widget _payloadsCard(BuildContext context) => CardCell.body(
        context,
        title: 'Capability',
        child: RowContainer(
          children: [
            for (final payloadWeight in rocket!.payloadWeights!)
              RowItem.text(
                payloadWeight.name.toString(),
                payloadWeight.getFormattedKg(),
              ),
          ],
        ),
      );

  Widget _stages(BuildContext context) {
    final FirstStage? firstStage = rocket?.firstStage;
    final SecondStage? secondStage = rocket?.secondStage;
    return CardCell.body(
      context,
      title: 'Stages',
      child: RowContainer(
        children: [
          RowItem.text(
              'Thrust first stage', firstStage?.getFormattedThrustSeaLevel()),
          RowItem.text('Fuel amount', firstStage?.getFormattedFuelAmount()),
          RowItem.text(
            'Reusable',
            null,
            endIcon: firstStage?.reusable == true
                ? const IconProperties(
                    icon: Icons.check_circle, color: Colors.greenAccent)
                : const IconProperties(
                    icon: Icons.cancel, color: Colors.redAccent),
          ),
          const Divider(),
          RowItem.text(
              'Thrust second stage', secondStage?.getFormattedThrust()),
          RowItem.text('Fuel amount', secondStage?.getFormattedFuelAmount()),
          RowItem.text('Stage engines', secondStage?.getFormattedEngines()),
          RowItem.text(
            'Reusable',
            null,
            endIcon: secondStage?.reusable == true
                ? const IconProperties(
                    icon: Icons.check_circle, color: Colors.greenAccent)
                : const IconProperties(
                    icon: Icons.cancel, color: Colors.redAccent),
          ),
        ],
      ),
    );
  }

  Widget _enginesCard(BuildContext context) => CardCell.body(
        context,
        title: 'Engines',
        child: RowContainer(
          children: [
            RowItem.text(
              'Model',
              rocket?.engines?.type,
            ),
            RowItem.text('Thrust weight', rocket?.getEngineThrustToWeight()),
            const Divider(),
            RowItem.text('Fuel', rocket?.engines?.propellant2),
            RowItem.text('Oxidizer', rocket?.engines?.propellant1),
            const Divider(),
            RowItem.text('Sea level thrust', rocket?.getEngineThrustSeaLevel()),
            RowItem.text('Vacuum thrust', rocket?.getEngineThrustVacuum()),
            const Divider(),
            RowItem.text('Sea level Isp', rocket?.getEngineSeaLevelIsp()),
            RowItem.text('Vacuum Isp', rocket?.getEngineVacuumIsp()),
          ],
        ),
      );
}
