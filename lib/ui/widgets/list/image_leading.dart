import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageLeading extends StatelessWidget {

  final String? url;
  final num? size;
  final VoidCallback? onTap;

  const ImageLeading({
    @required this.url,
    @required this.size,
    this.onTap,
  });

  factory ImageLeading.load(String? url, num? size, {VoidCallback? onTap}) =>
      ImageLeading(url: url, size: size, onTap: onTap);

  @override
  Widget build(BuildContext context) => SizedBox(
        width: size?.toDouble(),
        height: size?.toDouble(),
        child: InkWell(
          onTap: onTap,
          child: url != null
              ? CachedNetworkImage(
                  imageUrl: url!,
                  fit: BoxFit.fitHeight)
              : SvgPicture.asset(
                  'assets/icons/patch.svg',
                  colorBlendMode: BlendMode.srcATop,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black45
                      : Colors.black26,
                ),
        ),
      );
}
