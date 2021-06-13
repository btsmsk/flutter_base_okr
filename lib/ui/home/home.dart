import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/stores/rockets/rockets_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //stores:---------------------------------------------------------------------
  late RocketStore _rocketStore;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // initializing stores
    _rocketStore = Provider.of<RocketStore>(context);

    // check to see if already called api
    if (!_rocketStore.loading) {
      _rocketStore.getRockets();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        return _rocketStore.loading
            ? CircularProgressIndicator()
            : Material(child: _buildListView());
      },
    );
  }

  Widget _buildListView() {
    return _rocketStore.rocketList != null
        ? ListView.separated(
            itemCount: _rocketStore.rocketList!.rockets!.length,
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
        '${_rocketStore.rocketList?.rockets?[position].rocketName}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        style: Theme.of(context).textTheme.title,
      ),
      subtitle: Text(
        '${_rocketStore.rocketList?.rockets?[position].description}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
      ),
    );
  }
}
