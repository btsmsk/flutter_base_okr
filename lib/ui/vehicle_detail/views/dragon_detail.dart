import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicles/dragon_vehicle.dart';
import 'package:get/get.dart';

class DragonDetail extends GetView {
  final DragonVehicle? dragon;

  const DragonDetail(this.dragon);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Center(
          child: Text(
            dragon?.name ?? '',
              style: const TextStyle(fontSize: 20),
        ),
      )
  );
}