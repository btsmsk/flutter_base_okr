import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/launches/launches.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:flutter_base_okr/utils/dimens.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class UpcomingListWidget extends StatelessWidget {
  final List<Launches> upcomingLaunchList;

  const UpcomingListWidget({Key? key, required this.upcomingLaunchList})
      : super(key: key);

  @override
  Widget build(BuildContext context) => upcomingLaunchList.isNotEmpty
      ? ListView.separated(
          itemCount: upcomingLaunchList.length,
          separatorBuilder: (context, position) => const SizedBox(),
          itemBuilder: (context, position) =>
              _buildListItem(upcomingLaunchList.elementAt(position), context),
        )
      : const Center(
          child: Text(
            "No item",
          ),
        );

  Widget _buildListItem(Launches item, BuildContext context) => Card(
        margin: const EdgeInsets.symmetric(
            vertical: Dimens.SIZE_12, horizontal: Dimens.SIZE_16),
        elevation: Dimens.SIZE_4,
        child: InkWell(
            onTap: () =>
                Get.toNamed(Routes.UPCOMING_DETAIL, arguments: item.id),
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Dimens.SIZE_16, horizontal: Dimens.SIZE_8),
                child: Row(
                  children: [
                    Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/upcoming.svg',
                                    color: Colors.blueGrey,
                                    colorBlendMode: BlendMode.srcATop,
                                    width: Dimens.SIZE_8,
                                    height: Dimens.SIZE_48),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('#${item.flightNumber}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                    Text("${item.name}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6),
                                    Text(item.getLaunchDate(context),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2),
                                  ],
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () => {
                                // no-op
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: Dimens.SIZE_14, top: Dimens.SIZE_16),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      height: Dimens.SIZE_18,
                                      width: Dimens.SIZE_18,
                                      child: Icon(Icons.calendar_today,
                                          color: Colors.red,
                                          size: Dimens.SIZE_18),
                                    ),
                                    const SizedBox(width: Dimens.SIZE_8),
                                    Text(
                                      "SAVE",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .apply(color: Colors.red),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                    const Expanded(
                        flex: 1,
                        child: Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.black38))
                  ],
                ))),
      );
}
