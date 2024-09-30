import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';


class TapBarListView extends StatefulWidget {
  const TapBarListView({super.key});

  @override
  State<TapBarListView> createState() => _TapBarListViewState();
}

class _TapBarListViewState extends State<TapBarListView> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.separated(
          itemCount: tapBarList.length,
          separatorBuilder: (context, index) => const SizedBox(
            width: 20,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              selectedItem = index;
              setState(() {});
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    tapBarList[index],
                    style: selectedItem != index
                        ? AppStyles.regular14White
                        : AppStyles.regular14White.copyWith(color: Colors.white),
                  ),
                ),
                5.height,
                if (selectedItem == index) Image.asset(AppImages.lineImage)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
List<String> tapBarList = [
  'الكل',
  'شقق',
  'فيلات',
  'مكاتب',
  'مستودع',
];
