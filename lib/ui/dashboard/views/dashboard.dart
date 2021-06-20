import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/company/company.dart';
import 'package:flutter_base_okr/ui/home/views/home.dart';
import 'package:flutter_base_okr/ui/latest/latest.dart';
import 'package:flutter_base_okr/ui/upcoming/upcoming.dart';
import 'package:flutter_base_okr/ui/vehicles/vehicles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class Dashboard extends GetView {
  final tabs = [HomeScreen(), Vehicles(), Upcoming(), Latest(), Company()];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        builder: (controller) => Scaffold(
              body: tabs[controller.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
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
                        width: 24,
                        height: 24),
                  ),
                  BottomNavigationBarItem(
                    label: "Upcoming",
                    icon: Icon(Icons.access_time),
                  ),
                  BottomNavigationBarItem(
                    label: "Latest",
                    icon: Icon(Icons.library_books),
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
