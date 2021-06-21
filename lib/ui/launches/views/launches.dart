import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/launches/controller/launches_controller.dart';
import 'package:flutter_base_okr/ui/widgets/tab/generic_tab.dart';
import 'package:get/get.dart';

import 'completed/completed.dart';
import 'upcoming/upcoming.dart';

class Launches extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LaunchesController>(
        builder: (controller) => GenericTab(tabItems: [
              TabItem(title: "Upcoming",
                  icon: Icons.timer,
                  widget: Upcoming()
              ),
              TabItem(
                  title: "Completed",
                  icon: Icons.check_circle,
                  widget: Completed()
              )
            ]));
  }
}
