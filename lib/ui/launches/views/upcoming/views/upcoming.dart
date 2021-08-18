import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/launches/views/upcoming/controllers/upcoming_controller.dart';
import 'package:flutter_base_okr/ui/launches/views/upcoming/views/widgets/upcoming_list.dart';
import 'package:flutter_base_okr/ui/widgets/card/error_cell.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get.dart';

class Upcoming extends GetView<UpcomingController> {
  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: () async {
          controller.getUpcomingLaunches();
        },
        child: Scaffold(
          body: Stack(
            children: [_buildMainContent()],
          ),
        ),
      );

  Widget _buildMainContent() => Container(
        child: controller.obx(
            (state) => UpcomingListWidget(upcomingLaunchList: state ?? []),
            onError: (error) => ErrorCell(
                controller.value, () => controller.getUpcomingLaunches()),
            onLoading: const Center(
              child: CircularProgressIndicator(),
            )),
      );
}
