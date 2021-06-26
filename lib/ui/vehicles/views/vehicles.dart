import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/vehicles/controllers/vehicles_controller.dart';
import 'package:flutter_base_okr/ui/vehicles/views/rockets/rockets.dart';
import 'package:flutter_base_okr/ui/vehicles/views/ships/ships.dart';
import 'package:flutter_base_okr/ui/widgets/tab/generic_tab.dart';
import 'package:get/get.dart';

import 'dragons/dragons.dart';

class Vehicles extends GetView {
  @override
  Widget build(BuildContext context) => GetBuilder<VehiclesController>(
        builder: (controller) => GenericTab(
          tabItems: [
            TabItem(title: "Rockets", widget: Rockets()),
            TabItem(title: "Ships", widget: Ships()),
            TabItem(title: "Dragons", widget: Dragons())
          ],
        ),
      );
}
