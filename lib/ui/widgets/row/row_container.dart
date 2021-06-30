import 'package:flutter/cupertino.dart';
import 'package:flutter_base_okr/utils/dimens.dart';

class RowContainer extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets padding;
  final double space;

  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final VerticalDirection verticalDirection;

  const RowContainer({
    required this.children,
    this.padding = const EdgeInsets.all(Dimens.SIZE_8),
    this.space = 12,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.min,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.verticalDirection = VerticalDirection.down,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding,
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          verticalDirection: verticalDirection,
          children: _intercalateSpacer(children),
        ),
      );

  /// This method receives a [list] object, and intercalate its
  /// content with [Separator.spacer] widgets, using a 'for' loop.
  List<Widget> _intercalateSpacer(List<Widget> list) => [
        for (int i = 0; i < list.length * 2 - 1; ++i)
          if (i.isEven) list[i ~/ 2] else SizedBox(height: space, width: space)
      ];
}
