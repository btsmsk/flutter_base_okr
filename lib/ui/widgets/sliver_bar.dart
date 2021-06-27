import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliverBar extends StatelessWidget {
  static const double heightRatio = 0.3;

  final String? title;
  final Widget? header;
  final num height;
  final List<Widget>? actions;

  const SliverBar({
    this.title = '',
    this.header,
    this.height = heightRatio,
    this.actions,
  });

  @override
  Widget build(BuildContext context) => SliverAppBar(
        expandedHeight: MediaQuery.of(context).size.height * height,
        actions: actions,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.55,
            ),
            child: Text(
              title ?? '',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: GoogleFonts.rubik(
                fontWeight: FontWeight.w600,
                shadows: <Shadow>[
                  Shadow(
                    color: Theme.of(context).primaryColor,
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          ),
          background: header,
        ),
      );
}
