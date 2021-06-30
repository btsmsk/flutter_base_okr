import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/utils/dimens.dart';

class ActionButton extends StatelessWidget {
  final Icon icon;
  final String? label;
  final VoidCallback? onTap;
  final Color? backgroundColor, labelColor;

  const ActionButton({
    required this.icon,
    this.label,
    this.onTap,
    this.backgroundColor = Colors.grey,
    this.labelColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Semantics(
      button: true,
      enabled: onTap != null,
      child: InkWell(
        onTap: onTap,
        focusColor: theme.focusColor,
        hoverColor: theme.hoverColor,
        highlightColor: theme.highlightColor,
        splashColor: theme.splashColor,
        child: Card(
          elevation: Dimens.ELEVATION,
          color: backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.DEFAULT_CARD_RADIUS)),
          child: Padding(
            padding: const EdgeInsets.only(
                left: Dimens.SIZE_8,
                right: Dimens.SIZE_8,
                top: Dimens.SIZE_2,
                bottom: Dimens.SIZE_2),
            child: InkWell(
              onTap: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  icon,
                  if (label != null)
                    Padding(
                      padding: const EdgeInsets.only(left: Dimens.SIZE_4),
                      child: Text(
                        label!,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: labelColor,
                            fontSize: Dimens.ACTION_LABEL),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
