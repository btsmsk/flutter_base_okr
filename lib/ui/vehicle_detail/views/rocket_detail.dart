import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicles/rocket_vehicle.dart';
import 'package:flutter_base_okr/ui/widgets/header_swiper.dart';
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

  //TODO: refactor all null checks!
  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverBar(
              title: rocket?.rocketName,
              header: SwiperHeader(
                urls: rocket?.photos ?? [],
              ),
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
            RowItem.text(
                'Maiden launch',
                rocket?.firstFlight != null
                    ? defaultDateFormatter.format(rocket!.firstFlight!)
                    : ''),
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
                      icon: Icons.check_circle, color: Colors.greenAccent)
                  : const IconProperties(
                      icon: Icons.cancel, color: Colors.redAccent),
            ),
            const Divider(),
            Text(rocket?.description ?? '')
          ],
        ),
      );

  Widget _specsCard(BuildContext context) {
    final num? fairingHeight =
        rocket?.secondStage?.payloads?.compositeFairing?.height?.meters;
    final num? fairingDiameter =
        rocket?.secondStage?.payloads?.compositeFairing?.diameter?.meters;
    return CardCell.body(
      context,
      title: 'Specifications',
      child: RowContainer(
        children: [
          RowItem.text('Rocket stages', '${rocket?.stages.toString()} stages'),
          const Divider(),
          RowItem.text(
              'Height', '${formatDecimal.format(rocket?.height?.meters)} m'),
          RowItem.text('Diameter',
              '${formatDecimal.format(rocket?.diameter?.meters)} m'),
          RowItem.text(
              'Weight', '${formatDecimal.format(rocket?.mass?.kg)} kg'),
          const Divider(),
          if (fairingHeight != null)
            RowItem.text('Fairing height',
                '${formatDecimal.format(rocket?.secondStage?.payloads?.compositeFairing?.height?.meters)} m'),
          if (fairingDiameter != null)
            RowItem.text('Fairing diameter',
                '${formatDecimal.format(rocket?.secondStage?.payloads?.compositeFairing?.diameter?.meters)} m'),
        ],
      ),
    );
  }

  Widget _payloadsCard(BuildContext context) => CardCell.body(
        context,
        title: 'Capability',
        child: RowContainer(
          children: [
            for (final payloadWeight in rocket!.payloadWeights!)
              RowItem.text(
                payloadWeight.name.toString(),
                '${formatDecimal.format(payloadWeight.kg)} kg',
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
              'Thrust first stage',
              firstStage?.thrustSeaLevel != null
                  ? '${formatDecimal.format(firstStage?.thrustSeaLevel?.kN)} kN'
                  : ''),
          RowItem.text(
              'Fuel amount',
              firstStage?.fuelAmountTons != null
                  ? '${formatDecimal.format(firstStage?.fuelAmountTons)} tons'
                  : ''),
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
              'Thrust second stage',
              secondStage?.thrust != null
                  ? '${formatDecimal.format(secondStage?.thrust?.kN)} kN'
                  : ''),
          RowItem.text(
              'Fuel amount',
              secondStage?.fuelAmountTons != null
                  ? '${formatDecimal.format(secondStage?.fuelAmountTons)} tons'
                  : ''),
          RowItem.text(
              'Stage engines',
              secondStage?.engines != null
                  ? '${formatDecimal.format(secondStage?.engines)} number'
                  : ''),
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
            RowItem.text(
                'Thrust weight',
                rocket?.engines?.thrustToWeight != null
                    ? formatDecimal.format(rocket?.engines?.thrustToWeight)
                    : ''),
            const Divider(),
            RowItem.text('Fuel', rocket?.engines?.propellant2),
            RowItem.text('Oxidizer', rocket?.engines?.propellant1),
            const Divider(),
            RowItem.text(
                'Sea level thrust',
                rocket?.engines?.thrustSeaLevel?.kN != null
                    ? '${formatDecimal.format(rocket?.engines?.thrustSeaLevel?.kN)} kN'
                    : ''),
            RowItem.text(
                'Vacuum thrust',
                rocket?.engines?.thrustVacuum?.kN != null
                    ? '${formatDecimal.format(rocket?.engines?.thrustVacuum?.kN)} kN'
                    : ''),
            const Divider(),
            RowItem.text(
                'Sea level Isp',
                rocket?.engines?.isp?.seaLevel != null
                    ? '${formatDecimal.format(rocket?.engines?.isp?.seaLevel)} kN'
                    : ''),
            RowItem.text(
                'Vacuum Isp',
                rocket?.engines?.isp?.vacuum != null
                    ? '${formatDecimal.format(rocket?.engines?.isp?.vacuum)} kN'
                    : ''),
          ],
        ),
      );
}
