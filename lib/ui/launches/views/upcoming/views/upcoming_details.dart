import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_base_okr/data/models/launches/launches.dart';
import 'package:flutter_base_okr/data/models/vehicle/first_stage.dart';
import 'package:flutter_base_okr/data/models/vehicle/rocket_vehicle.dart';
import 'package:flutter_base_okr/data/models/vehicle/second_stage.dart';
import 'package:flutter_base_okr/ui/launches/views/upcoming/controllers/upcoming_details_controller.dart';
import 'package:flutter_base_okr/ui/widgets/header_swiper.dart';
import 'package:flutter_base_okr/ui/widgets/list/image_leading.dart';
import 'package:flutter_base_okr/ui/widgets/row/card_cell.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_container.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_item.dart';
import 'package:flutter_base_okr/ui/widgets/sliver_bar.dart';
import 'package:flutter_base_okr/utils/dimens.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class UpcomingDetails extends GetView<UpcomingDetailsController> {

  @override
  Widget build(BuildContext context) => Container(
        child: controller.obx((state) {
      state as LaunchDetailsUiModel;
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverBar(
              title: state.launch.name,
              floating: true,
              header: SwiperHeader(
                  urls: state.rocket.flickrImages != null
                      ? state.rocket.flickrImages!
                      : []),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () => Share.share(
                      'rocketName: ${state.launch.links?.wikipedia}}'),
                  tooltip: 'Share',
                )
              ],
            ),
            SliverSafeArea(
              top: false,
              sliver: SliverToBoxAdapter(
                  child: RowContainer(
                children: [
                  _missionCard(context, state.launch),
                  _buildGeneralInfoCard(context, state.rocket),
                  _specsCard(context, state.rocket),
                  _stages(context, state.rocket),
                  if (state.rocket.engines != null) _enginesCard(context, state.rocket),
                ],
              )),
            ),
          ],
        ),
      );
    },
            onError: (error) => Center(
                  child: Text(error.toString()),
                ),
            onLoading: const Center(
              child: CircularProgressIndicator(
                color: Colors.black45,
              ),
            )));

  Widget _missionCard(BuildContext context, Launches launch) => CardCell.header(
        context,
        title: launch.name,
        leading: Padding(
          padding: EdgeInsets.all(Dimens.SIZE_8),
          child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(Dimens.SIZE_8)),
          child: ImageLeading.load(launch.links?.patch?.large, Dimens.SIZE_72),
        ),),
        subtitle: [
          Row(
            children: [
              const SizedBox(
                height: Dimens.SIZE_14,
                width: Dimens.SIZE_14,
                child: Icon(Icons.calendar_today,
                    color: Colors.black38, size: Dimens.SIZE_14),
              ),
              const SizedBox(width: Dimens.SIZE_8),
              Text(
                launch.getLaunchDate(context),
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .apply(color: Colors.black38),
              )
            ],
          ),
          Row(
            children: [
              const SizedBox(
                height: Dimens.SIZE_14,
                width: Dimens.SIZE_14,
                child: Icon(Icons.info_outlined,
                    color: Colors.black38, size: Dimens.SIZE_14),
              ),
              const SizedBox(width: Dimens.SIZE_8),
              Text(
                "#${launch.flightNumber}",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .apply(color: Colors.black38),
              )
            ],
          ),
        ],
        details: launch.details,
      );

  Widget _buildGeneralInfoCard(BuildContext context, RocketVehicle rocket) =>
      CardCell.body(
        context,
        title: 'Rocket',
        child: RowContainer(
          children: [
            RowItem.text('Maiden launch', rocket.getDateTime()),
            RowItem.text(
              'Launch cost',
              rocket.getFormattedCost(),
            ),
            RowItem.text(
              'Success Rate',
              rocket.getSuccessRate(),
              endIcon:
                  const IconProperties(icon: Icons.star, color: Colors.amber),
            ),
            RowItem.text(
              'Active',
              null,
              endIcon: rocket.active == true
                  ? const IconProperties(
                      icon: Icons.check_circle, color: Colors.greenAccent)
                  : const IconProperties(
                      icon: Icons.cancel, color: Colors.redAccent),
            ),
            const Divider(),
            Text(rocket.description ?? '')
          ],
        ),
      );

  Widget _specsCard(BuildContext context, RocketVehicle? rocket) =>
      CardCell.body(
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

  Widget _stages(BuildContext context, RocketVehicle? rocket) {
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

  Widget _enginesCard(BuildContext context, RocketVehicle? rocket) =>
      CardCell.body(
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
