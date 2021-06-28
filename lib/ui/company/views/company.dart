import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/company/company_info.dart';
import 'package:flutter_base_okr/ui/company/controllers/company_controller.dart';
import 'package:flutter_base_okr/ui/widgets/header_swiper.dart';
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
            _getInfoView(),
            // _AchievementsListView(),
          ],
        ),
      );

  SliverToBoxAdapter _getInfoView() => SliverToBoxAdapter(
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
                    RowItem.text(
                      'ceo',
                      state.ceo,
                    ),
                    RowItem.text(
                      'cto',
                      state.cto,
                    ),
                    RowItem.text(
                      'coo',
                      state.coo,
                    ),
                    RowItem.text(
                      'valuation',
                      state.valuation.toString(),
                    ),
                    /*RowItem.text(
                        'location',
                        state.getLocation,
                      ),*/
                    RowItem.text(
                      'employees',
                      state.employees.toString(),
                    ),
                    Text(state.summary!),
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
          child: CircularProgressIndicator(
            color: Colors.black45,
          ),
        ),
      ));
}
