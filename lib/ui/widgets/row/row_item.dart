import 'package:flutter/material.dart';
import 'package:flutter_base_okr/utils/dimens.dart';

class RowItem extends StatelessWidget {
  final Widget title;
  final Widget? description;

  const RowItem({
    required this.title,
    this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: title,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: description,
            ),
          ),
        ],
      );

  factory RowItem.text(
    String title,
    String? description, {
    Key? key,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    TextOverflow? textOverflow,
    int? maxLines,
    IconProperties? startIcon,
    IconProperties? endIcon,
  }) =>
      RowItem(
        key: key,
        title: Row(
          children: <Widget>[
            if (startIcon != null)
              Padding(
                padding: startIcon.padding,
                child: _Icon(properties: startIcon),
              ),
            _Text(
              title,
              style: titleStyle,
              textAlign: TextAlign.start,
              textOverflow: textOverflow,
              maxLines: maxLines,
            ),
          ],
        ),
        description: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            _Text(
              description ?? '',
              style: descriptionStyle,
              textAlign: TextAlign.end,
              textOverflow: textOverflow,
              maxLines: maxLines,
              useDefaultDescriptionColor: true,
            ),
            if (endIcon != null)
              Padding(
                padding: endIcon.padding,
                child: _Icon(properties: endIcon),
              ),
          ],
        ),
      );

  factory RowItem.tap(
    String title,
    String description, {
    Key? key,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    TextOverflow? textOverflow,
    int? maxLines,
    VoidCallback? onTap,
  }) =>
      RowItem(
        key: key,
        title: _Text(
          title,
          style: titleStyle,
          textAlign: TextAlign.start,
          textOverflow: textOverflow,
          maxLines: maxLines,
        ),
        description: InkResponse(
          onTap: onTap,
          child: _Text(
            description,
            style: descriptionStyle,
            textAlign: TextAlign.end,
            textOverflow: textOverflow ?? TextOverflow.ellipsis,
            maxLines: maxLines,
            clickable: onTap != null,
            useDefaultDescriptionColor: true,
          ),
        ),
      );
}

class _Text extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final bool clickable;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final bool useDefaultDescriptionColor;

  const _Text(
    this.data, {
    Key? key,
    this.style,
    this.clickable = false,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.useDefaultDescriptionColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: useDefaultDescriptionColor
                  ? Theme.of(context).textTheme.caption!.color
                  : null,
              decoration:
                  clickable ? TextDecoration.underline : TextDecoration.none,
            ),
        child: Text(
          data,
          overflow: textOverflow ?? TextOverflow.ellipsis,
          maxLines: maxLines,
          textAlign: textAlign,
          style: style,
        ),
      );
}

class _Icon extends StatelessWidget {
  final IconProperties? properties;

  const _Icon({Key? key, this.properties}) : super(key: key);

  @override
  Widget build(BuildContext context) => Icon(
        properties?.icon,
        color: properties?.color,
        size: properties?.iconSize,
      );
}

class IconProperties {
  final Color? color;
  final IconData? icon;
  final double? iconSize;
  final EdgeInsets padding;

  const IconProperties(
      {required this.icon,
      required this.color,
      this.iconSize = Dimens.SIZE_16,
      this.padding =
          const EdgeInsets.only(left: Dimens.SIZE_4, right: Dimens.SIZE_4)});
}
