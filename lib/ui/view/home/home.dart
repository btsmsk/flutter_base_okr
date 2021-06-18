import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/core/base_widget_state.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'home_store.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseWidgetState<HomeScreen, HomeStore> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    storeController.getRockets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _buildBody(),
    );
  }

  // body methods:--------------------------------------------------------------
  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        _buildMainContent(),
      ],
    );
  }

  Widget _buildMainContent() {
    return Observer(
      builder: (context) {
        return storeController.loading
            ? CircularProgressIndicator()
            : Material(child: _buildListView());
      },
    );
  }

  Widget _buildListView() {
    return storeController.rocketList != null
        ? ListView.separated(
            itemCount: storeController.rocketList!.rockets!.length,
            separatorBuilder: (context, position) {
              return Divider();
            },
            itemBuilder: (context, position) {
              return _buildListItem(position);
            },
          )
        : Center(
            child: Text(
              "No item",
            ),
          );
  }

  Widget _buildListItem(int position) {
    return ListTile(
      dense: true,
      title: Text(
        '${storeController.rocketList?.rockets?[position].rocketName}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        style: Theme.of(context).textTheme.title,
      ),
      subtitle: Text(
        '${storeController.rocketList?.rockets?[position].description}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
      ),
    );
  }

  @override
  void dispose() {
    storeController.errorStore.dispose();
    super.dispose();
  }
}
