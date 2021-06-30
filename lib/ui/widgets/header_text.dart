import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final bool head;

  const HeaderText(
    this.text, {
    Key? key,
    this.head = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        top: false,
        minimum: EdgeInsets.only(
          top: head ? 16 : 0,
          bottom: head ? 16 : 0,
          left: 16,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      );
}
