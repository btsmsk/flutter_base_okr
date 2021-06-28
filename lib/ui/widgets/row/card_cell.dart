import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_container.dart';
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
    this.padding = const EdgeInsets.all(Dimens.SMALL),
    this.clipBehavior = Clip.antiAlias,
    this.radius = Dimens.DEFAULT_CARD_RADIUS,
    this.borderWidth = Dimens.XXSMALL,
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
                      fontSize: Dimens.MEDIUM,
                    ),
              ),
            child
          ],
        ),
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
