import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/widgets/divder_widget.dart';
import 'package:realestate/core/widgets/line_image_widget.dart';
import 'package:realestate/features/home/presentation/widgets/more_app_bar_widget.dart';

import '../../../home/presentation/widgets/edit_profile__adervtise_listview_item.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const MoreAppBaWidget(title: 'نتائج البحث'),
                  20.height,
                  const DividerWidget(),
                  20.height,
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) => const AdvertiseListviewItem(),
                        separatorBuilder: (context, index) => const LineImageWidget(),
                        itemCount: 10),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
