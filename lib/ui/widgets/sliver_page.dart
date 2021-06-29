import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/widgets/sliver_bar.dart';

class SliverPage extends StatelessWidget {
  final String? title;
  final Widget? header;
  final List<Widget>? children, actions;
  final Map<String, String>? popupMenu;
  final ScrollController? controller;

  const SliverPage({
    @required this.title,
    @required this.header,
    this.children,
    this.actions,
    this.popupMenu,
    this.controller,
  });

  @override
  Widget build(BuildContext context) => CustomScrollView(
        key: PageStorageKey(title),
        controller: controller,
        slivers: <Widget>[
          SliverBar(
            title: title,
            header: header,
          ),
          ...children!,
        ],
      );
}
