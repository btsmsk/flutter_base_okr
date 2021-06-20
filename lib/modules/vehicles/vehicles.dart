import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Vehicles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Vehicles",
            style: TextStyle(color: Colors.black38, fontSize: 30),
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}
