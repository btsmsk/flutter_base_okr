import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/home/controllers/home_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/barrier_vector.svg',
              height: 150,
              width: 150,
              colorBlendMode: BlendMode.srcATop,
            ),
          ),
        ),
      );
}
