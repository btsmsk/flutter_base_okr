import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/company/achievement.dart';
import 'package:flutter_base_okr/ui/widgets/list/list_cell.dart';

class AchievementCell extends StatelessWidget {
  final Achievement? achievement;
  final int index;

  const AchievementCell({
    Key? key,
    required this.achievement,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          ListCell(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor.withOpacity(0.65),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).accentColor,
                  width: 3,
                ),
              ),
              child: Center(
                child: Text(
                  (index + 1).toString(),
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentTextTheme.subtitle1!.color,
                      ),
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
            ),
            title: achievement?.title,
            subtitle: achievement?.details,
            trailing: const Icon(Icons.chevron_right),
          ),
          const Divider(height: 16, indent: 16),
        ],
      );
}
