import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/utils/dimens.dart';

import 'action_button.dart';

class ListCell extends StatelessWidget {
  final Widget? leading, trailing;
  final String? title, subtitle, body;
  final VoidCallback? onTap;
  final EdgeInsets? contentPadding;
  final bool? dense;
  final List<ActionButton>? actions;

  const ListCell({
    Key? key,
    this.leading,
    this.trailing,
    @required this.title,
    this.subtitle,
    this.onTap,
    this.contentPadding,
    this.dense = false,
    this.actions,
    this.body,
  }) : super(key: key);

  factory ListCell.icon({
    Key? key,
    @required IconData? icon,
    Widget? trailing,
    @required String? title,
    String? subtitle,
    VoidCallback? onTap,
    EdgeInsets? contentPadding,
    bool dense = false,
  }) =>
      ListCell(
        key: key,
        leading: Icon(icon, size: Dimens.XLARGE),
        trailing: trailing,
        title: title,
        subtitle: subtitle,
        onTap: onTap,
        contentPadding: contentPadding,
        dense: dense,
      );

  @override
  Widget build(BuildContext context) => ListTile(
        leading: Padding(
          padding:
              const EdgeInsets.only(top: Dimens.XSMALL, bottom: Dimens.XSMALL),
          child: leading
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (actions != null && actions!.isNotEmpty)
              const SizedBox(height: Dimens.MEDIUM, width: Dimens.SMALL),
            Text(
              title ?? '',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            if (subtitle != null)
              const SizedBox(height: Dimens.SMALL, width: Dimens.SMALL),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              subtitle ?? '',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).textTheme.caption?.color,
                  ),
            ),
            if (actions != null && actions!.isNotEmpty)
              Padding(
                  padding: const EdgeInsets.only(
                      top: Dimens.XSMALL, bottom: Dimens.XSMALL),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: actions as List<Widget>)))
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (onTap != null && trailing == null)
              const Icon(Icons.chevron_right)
            else
              trailing ?? const SizedBox.shrink(),
            if (body != null) Text(body!)
          ],
        ),
        contentPadding: contentPadding,
        onTap: onTap,
        dense: dense,
      );
}
