import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Home",
              style: TextStyle(color: Colors.black38, fontSize: 30),
            ),
            color: Colors.blueGrey,
          )),
    );
  }
}
