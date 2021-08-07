import 'package:flutter/material.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:flutter_base_okr/ui/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  Get.toNamed(Routes.BLUETOOTH_DEVICES);
                },
                child: const Text(
                  "Paired Bluetooth Devices",
                ),
              ),
            ],
          ),
        ),
      );
}
