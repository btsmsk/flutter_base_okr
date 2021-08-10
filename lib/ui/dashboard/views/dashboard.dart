import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/data_source/local/theme_service.dart';
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
  Widget build(BuildContext context) => GetBuilder<DashboardController>(
        builder: (controller) => Scaffold(
          appBar:
              AppBar(
                  title: const Text('Flutter OKR'),
                  elevation: Dimens.NONE,
              actions: [
                IconButton(
                  icon: Icon(Get.isDarkMode
                      ? Icons.light_mode
                      : Icons.dark_mode),
                  onPressed: () {
                    ThemeService().switchTheme();
                  },
                )
              ],),
          body: tabs[controller.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            elevation: Dimens.ELEVATION,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex,
            onTap: (index) {
              controller.setCurrentTab(index);
            },
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Vehicles",
                icon: SvgPicture.asset('assets/icons/capsule.svg',
                    color: controller.currentIndex != 1
                        ? Colors.grey
                        : Theme.of(context).primaryColor,
                    colorBlendMode: BlendMode.srcATop,
                    width: Dimens.SIZE_24,
                    height: Dimens.SIZE_24),
              ),
              const BottomNavigationBarItem(
                label: "Launches",
                icon: Icon(Icons.access_time),
              ),
              const BottomNavigationBarItem(
                label: "Company",
                icon: Icon(Icons.location_city),
              ),
            ],
          ),
        ),
      );
}
