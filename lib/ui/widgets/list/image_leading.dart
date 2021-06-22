import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/utils/dimens.dart';
import 'package:flutter_svg/svg.dart';

class ImageLeading extends StatelessWidget {
  static const smallSize = Dimens.XXXLARGE, bigSize = Dimens.LEADING_IMAGE_BIG;

  final String? url;
  final num? size;
  final VoidCallback? onTap;

  const ImageLeading({
    @required this.url,
    @required this.size,
    this.onTap,
  });

  factory ImageLeading.small(String url) {
    return ImageLeading(url: url, size: smallSize);
  }

  factory ImageLeading.big(String url, {VoidCallback? onTap}) {
    return ImageLeading(url: url, size: bigSize, onTap: onTap);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size?.toDouble(),
      height: size?.toDouble(),
      child: InkWell(
        onTap: onTap,
        child: url != null
            ? CachedNetworkImage(
                imageUrl: url!,
                fit: BoxFit.fitHeight,
                imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet)
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
}
