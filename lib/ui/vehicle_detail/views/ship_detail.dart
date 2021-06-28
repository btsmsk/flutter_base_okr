import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicles/ship_vehicle.dart';
import 'package:get/get.dart';

class ShipDetail extends GetView {
  final ShipVehicle? ship;

  const ShipDetail(this.ship);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Center(
          child: Text(
            ship?.shipName ?? '',
              style: const TextStyle(fontSize: 20),
        ),
      )
  );
}