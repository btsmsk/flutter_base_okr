import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/launches/views/upcoming/controllers/upcoming_controller.dart';
import 'package:flutter_base_okr/ui/launches/views/upcoming/views/widgets/upcoming_list.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get.dart';

class Upcoming extends GetView<UpcomingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [_buildMainContent()],
      ),
    );
  }

  Widget _buildMainContent() {
    return Container(
      child: controller.obx((state) {
        return UpcomingListWidget(upcomingLaunchList: state ?? []);
      }, onError: (error) {
        return Center(
          child: Text(error.toString()),
        );
      },
          onLoading: Center(
            child: CircularProgressIndicator(
              color: Colors.black45,
            ),
          )),
    );
  }
}
