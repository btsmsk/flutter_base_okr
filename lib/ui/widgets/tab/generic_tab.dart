import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/util/dimens.dart';

class TabItem {
  final String title;
  final IconData icon;
  final Widget widget;

  TabItem({required this.title, required this.icon, required this.widget});
}

class GenericTab extends StatelessWidget {
  final List<TabItem> tabItems;

  GenericTab({required this.tabItems});

  List<Widget> getWidgets() {
    return tabItems.map((element) => element.widget).toList();
  }

  List<Widget> getTabs() {
    return tabItems
        .map((element) => Tab(title: element.title, icon: element.icon))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabItems.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimens.TABHEIGHT),
          child: Container(
            padding: EdgeInsets.only(top: Dimens.SMALL),
            color: Colors.white,
            child: TabBar(
              indicatorPadding: EdgeInsets.symmetric(vertical: Dimens.SMALL),
              indicatorWeight: 10,
              indicator: UnderlineTabIndicator(
                  borderSide:
                  BorderSide(width: Dimens.XXSMALL, color: Colors.red)),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.black38,
              labelColor: Colors.black87,
              unselectedLabelColor: Colors.black38,
              tabs: getTabs(),
            ),
          ),
        ),
        body: TabBarView(children: getWidgets()),
      ),
    );
  }
}

class Tab extends StatelessWidget {
  final String title;
  final IconData icon;

  Tab({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: Dimens.XSMALL),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(
                  top: Dimens.XSMALL,
                  right: Dimens.SMALL,
                  bottom: Dimens.SMALL),
              child: Icon(icon)),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    );
  }
}

