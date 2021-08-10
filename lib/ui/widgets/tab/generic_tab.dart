import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/utils/dimens.dart';

class TabItem {
  final String title;
  final IconData? icon;
  final Widget widget;

  TabItem({required this.title, this.icon, required this.widget});
}

class GenericTab extends StatelessWidget {
  final List<TabItem> tabItems;

  const GenericTab({required this.tabItems});

  List<Widget> getWidgets() =>
      tabItems.map((element) => element.widget).toList();

  List<Widget> getTabs() => tabItems
      .map((element) => Tab(title: element.title, icon: element.icon))
      .toList();

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: tabItems.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(Dimens.TABHEIGHT),
            child: Container(
              padding: const EdgeInsets.only(top: Dimens.SIZE_8),
              child: TabBar(
                indicatorPadding: const EdgeInsets.symmetric(vertical: Dimens.SIZE_8),
                indicatorWeight: 10,
                tabs: getTabs(),
              ),
            ),
          ),
          body: TabBarView(children: getWidgets()),
        ),
      );
}

class Tab extends StatelessWidget {
  final String title;
  final IconData? icon;

  Tab({required this.title, this.icon});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.only(bottom: Dimens.SIZE_4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null)
              Padding(
                  padding: const EdgeInsets.only(
                      top: Dimens.SIZE_4,
                      right: Dimens.SIZE_8,
                      bottom: Dimens.SIZE_8),
                  child: Icon(icon)),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )
          ],
        ),
      );
}
