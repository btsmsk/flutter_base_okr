import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_container.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_layout.dart';
import 'package:flutter_base_okr/utils/dimens.dart';

class CardCell extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final Clip clipBehavior;
  final double radius;
  final double borderWidth;
  final Color? color;
  final Color? shadowColor;

  const CardCell({
    required this.child,
    this.padding = const EdgeInsets.all(Dimens.SIZE_8),
    this.clipBehavior = Clip.antiAlias,
    this.radius = Dimens.DEFAULT_CARD_RADIUS,
    this.borderWidth = Dimens.SIZE_2,
    this.color = Colors.white,
    this.shadowColor,
    Key? key,
  }) : super(key: key);

  factory CardCell.body(
    BuildContext context, {
    required Widget child,
    Key? key,
    String? title,
  }) =>
      CardCell(
        key: key,
        child: RowContainer(
          children: <Widget>[
            if (title != null)
              Text(
                title.toUpperCase(),
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.SIZE_16,
                    ),
              ),
            child
          ],
        ),
      );

  factory CardCell.header(
    BuildContext context, {
    Key? key,
    Widget? leading,
    @required String? title,
    List<Widget>? subtitle,
    String? details,
  }) =>
      CardCell(
        key: key,
        child: RowLayout(children: <Widget>[
          Row(children: <Widget>[
            if (leading != null) ...[leading, SizedBox(height: Dimens.SIZE_12)],
            Expanded(
              child: RowLayout(
                space: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimens.SIZE_18,
                        ),
                  ),
                  if (subtitle != null)
                    RowLayout(
                      space: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: subtitle,
                    ),
                ],
              ),
            ),
          ]),
          if (details != null) ...[
            const Divider (indent: Dimens.SIZE_16, endIndent: Dimens.SIZE_16),
            Container(
                padding: const EdgeInsets.only(
                    right: Dimens.SIZE_16,
                    left: Dimens.SIZE_16,
                    bottom: Dimens.SIZE_16),
                child: Text(details)),
          ]
        ]),
      );

  @override
  Widget build(BuildContext context) => Card(
        color: color,
        shadowColor: shadowColor,
        clipBehavior: clipBehavior,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: BorderSide(
            width: borderWidth,
            color: Theme.of(context).dividerColor.withOpacity(
                  Theme.of(context).brightness == Brightness.dark ? 0.4 : 0.1,
                ),
          ),
        ),
        child: Padding(
          padding: padding,
          child: child,
        ),
      );
}
