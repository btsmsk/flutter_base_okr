import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/launches/launches.dart';

class UpcomingListWidget extends StatelessWidget {
  final List<Launches> upcomingLaunchList;

  const UpcomingListWidget({Key? key, required this.upcomingLaunchList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return upcomingLaunchList.isNotEmpty
        ? ListView.separated(
            itemCount: upcomingLaunchList.length,
            separatorBuilder: (context, position) {
              return Divider();
            },
            itemBuilder: (context, position) {
              return _buildListItem(upcomingLaunchList.elementAt(position));
            },
          )
        : Center(
            child: Text(
              "No item",
            ),
          );
  }

  Widget _buildListItem(Launches item) {
    return ListTile(
      dense: true,
      title: Text(
        "${(item.rocket?.rocketName)} - ${(item.missionName)}",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        style: TextStyle(color: Colors.black45),
      ),
      subtitle: Text(
        "${(item.launchDateLocal)}",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
      ),
    );
  }
}
