import 'package:flutter_base_okr/utils/date.dart';

import 'diameter.dart';
import 'mass.dart';

abstract class Vehicle {
  final String? id;
  final String? name;
  final String? type;
  final String? description;
  final String? url;
  final Diameter? height;
  final Diameter? diameter;
  final Mass? mass;
  final bool? active;
  final DateTime? dateTime;
  final List<String>? photos;

  const Vehicle({
    this.id,
    this.name,
    this.type,
    this.description,
    this.url,
    this.height,
    this.diameter,
    this.mass,
    this.active,
    this.dateTime,
    this.photos,
  });

  String getDateTime() => dateTime != null ? defaultDateFormatter.format(dateTime!) : '';
}

