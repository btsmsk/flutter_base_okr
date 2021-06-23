import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/company/views/company.dart';
import 'package:flutter_base_okr/ui/home/views/home.dart';
import 'package:flutter_base_okr/ui/launches/views/launches.dart';
import 'package:flutter_base_okr/utils/dimens.dart';
import 'package:flutter_base_okr/ui/vehicles/views/vehicles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class Dashboard extends GetView {
  final tabs = [HomeScreen(), Vehicles(), Launches(), Company()];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(title: Text('Tabs Demo'), elevation: Dimens.NONE),
              body: tabs[controller.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.white,
                elevation: Dimens.ELEVATION,
                type: BottomNavigationBarType.fixed,
                currentIndex: controller.currentIndex,
                selectedItemColor: Colors.black87,
                unselectedItemColor: Colors.black38,
                onTap: (index) {
                  controller.setCurrentTab(index);
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    label: "Vehicles",
                    icon: SvgPicture.asset('assets/icons/capsule.svg',
                        color: controller.currentIndex != 1
                            ? Colors.black38
                            : Colors.black87,
                        colorBlendMode: BlendMode.srcATop,
                        width: Dimens.LARGE,
                        height: Dimens.LARGE),
                  ),
                  BottomNavigationBarItem(
                    label: "Launches",
                    icon: Icon(Icons.access_time),
                  ),
                  BottomNavigationBarItem(
                    label: "Company",
                    icon: Icon(Icons.location_city),
                  ),
                ],
              ),
            ));
  }
}
