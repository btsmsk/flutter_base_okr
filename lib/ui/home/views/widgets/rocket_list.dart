import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/vehicles/rocket_vehicle.dart';

class RocketListWidget extends StatelessWidget {
  final List<RocketVehicle> rocketList;

  const RocketListWidget({Key? key, required this.rocketList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return rocketList.isNotEmpty
        ? ListView.separated(
            itemCount: rocketList.length,
            separatorBuilder: (context, position) {
              return Divider();
            },
            itemBuilder: (context, position) {
              return _buildListItem(rocketList.elementAt(position));
            },
          )
        : Center(
            child: Text(
              "No item",
            ),
          );
  }

  Widget _buildListItem(RocketVehicle rocket) {
    return ListTile(
      dense: true,
      title: Text(
        '${rocket.rocketName}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        style: TextStyle(color: Colors.black45),
      ),
      subtitle: Text(
        '${rocket.description}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
      ),
    );
  }
}
