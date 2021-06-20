import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/home/controllers/home_controller.dart';
import 'package:flutter_base_okr/ui/home/views/widgets/rocket_list.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
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
        return RocketListWidget(rocketList: state ?? []);
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
