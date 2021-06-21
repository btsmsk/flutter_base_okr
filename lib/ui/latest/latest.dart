import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Latest extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
          alignment: Alignment.center,
          child: Text(
            "Latest",
            style: TextStyle(color: Colors.black38, fontSize: 30),
          ),
          color: Colors.deepPurple,
      )),
    );
  }
}
