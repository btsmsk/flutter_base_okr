import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/utils/dimens.dart';

class Info extends StatelessWidget {
  final Widget? header;
  final Widget? title;
  final Widget? subtitle;
  final EdgeInsets? padding;
  final double headerSpace;
  final double subtitleSpace;

  const Info({
    Key? key,
    this.header,
    this.headerSpace = Dimens.SIZE_24,
    this.subtitleSpace = Dimens.SIZE_8,
    this.padding,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
      child: Padding(
        padding: padding ?? const EdgeInsets.all(Dimens.SIZE_32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (header != null)
              IconTheme.merge(
                data: Theme.of(context).iconTheme.copyWith(
                  color: Theme.of(context).textTheme.caption!.color,
                  size: 100,
                ),
                child: header!,
              ),
            if (header != null && (title != null || subtitle != null))
              SizedBox(height: headerSpace),
          ],
        ),
      ),
    );
}
