import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class SwiperHeader extends StatefulWidget {
  final List<String> urls;

  const SwiperHeader({Key? key, required this.urls}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SwiperHeaderState();
}

class _SwiperHeaderState extends State<SwiperHeader> {

  @override
  Widget build(BuildContext context) => Swiper(
        itemCount: widget.urls.length,
        itemBuilder: (context, index) => CachedNetworkImage(
          imageUrl: widget.urls[index],
          errorWidget: (context, index, error) => Icon(Icons.image,
              size: 40, color: Theme.of(context).textTheme.caption?.color),
          fadeInDuration: const Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
        curve: Curves.easeOutCubic,
        autoplayDelay: 5000,
        autoplay: true,
        duration: 850,
        onTap: (index) => {
          // not-implemented
        },
      );
}
