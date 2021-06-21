import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/launches/controller/launches_controller.dart';
import 'package:flutter_base_okr/ui/util/dimens.dart';
import 'package:flutter_base_okr/ui/widgets/tab/generic_tab.dart';
import 'package:get/get.dart';

import 'completed/completed.dart';
import 'upcoming/upcoming.dart';

class Launches extends GetView {
  final tabs = [
    Container(
      padding: EdgeInsets.only(bottom: Dimens.XSMALL),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(
                  top: Dimens.XSMALL,
                  right: Dimens.SMALL,
                  bottom: Dimens.SMALL),
              child: Icon(Icons.timer)),
          Text(
            "Upcoming",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.only(bottom: Dimens.XSMALL),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(
                  top: Dimens.XSMALL,
                  right: Dimens.SMALL,
                  bottom: Dimens.SMALL),
              child: Icon(Icons.check_circle)),
          Text("Completed",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LaunchesController>(
      builder: (controller) => GenericTab(tabItems: [
        TabItem(title: "Upcoming", icon: Icons.timer, widget: Upcoming()),
        TabItem(title: "Completed", icon: Icons.check_circle, widget: Completed())
      ])
    );
  }
}
