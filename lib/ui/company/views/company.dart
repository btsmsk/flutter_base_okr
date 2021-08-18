import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/company/company_info.dart';
import 'package:flutter_base_okr/ui/company/controllers/company_controller.dart';
import 'package:flutter_base_okr/ui/widgets/header_swiper.dart';
import 'package:flutter_base_okr/ui/widgets/header_text.dart';
import 'package:flutter_base_okr/ui/widgets/list/achievement_cell.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_item.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_layout.dart';
import 'package:flutter_base_okr/ui/widgets/sliver_page.dart';
import 'package:get/get.dart';

class Company extends GetView<CompanyController> {
  static const _companyUrls = [
    'https://live.staticflickr.com/342/18039170043_e2ca8b540a_c.jpg',
    'https://live.staticflickr.com/1829/42374725534_b6a1e441a9_c.jpg',
    'https://live.staticflickr.com/8688/17024507155_2168c8d032_c.jpg',
    'https://live.staticflickr.com/4760/40126462231_97a02f6f8c_c.jpg',
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SliverPage(
          title: 'About SpaceX',
          header: SwiperHeader(urls: List.from(_companyUrls)..shuffle()),
          children: [
            _getInfoView(context),
            _getAchievementsListView(),
          ],
        ),
      );

  SliverToBoxAdapter _getInfoView(BuildContext context) => SliverToBoxAdapter(
          child: controller.obx(
        (state) {
          state as CompanyInfo;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                top: false,
                minimum: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: RowLayout(
                  children: <Widget>[
                    RowLayout(
                      space: 6,
                      children: <Widget>[
                        Text(
                          state.name.toString(),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          '2002',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                color: Theme.of(context).textTheme.caption!.color,
                              ),
                        ),
                      ],
                    ),
                    RowItem.text(
                      'CEO',
                      state.ceo,
                    ),
                    RowItem.text(
                      'CTO',
                      state.cto,
                    ),
                    RowItem.text(
                      'COO',
                      state.coo,
                    ),
                    RowItem.text(
                      'Valuation',
                      state.valuation.toString(),
                    ),
                    RowItem.text(
                      'Location',
                      'Hawthorne, California',
                    ),
                    RowItem.text(
                      'Employees',
                      state.employees.toString(),
                    ),
                    Text(state.summary.toString()),
                  ],
                ),
              ),
            ],
          );
        },
        onError: (error) => Center(
          child: Text(error.toString()),
        ),
        onLoading: const Center(
          child: CircularProgressIndicator(),
        ),
      ));

  SliverToBoxAdapter _getAchievementsListView() => SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderText('Achievements', head: true),
            Obx(() => ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => AchievementCell(
                    achievement: controller.achievements?.elementAt(index),
                    index: index,
                  ),
                  itemCount: controller.achievements?.length ?? 0,
                )),
          ],
        ),
      );
}
