import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class OwnerItemWidget extends StatelessWidget {
  const OwnerItemWidget({
    super.key, required this.title, required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: 2,
              color: AppColors.sliver
          )
      ),
      child: Row(
        children: [
          Column(
            children: [
              Center(
                  child: Text(
                    '1500 ريال',
                    style: AppStyles.bold16black,
                  )),
              15.height,
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10),
                  color: Colors.yellow,
                  child: Text(
                    'سنويا',
                    style: AppStyles.bold14Black,
                  ),
                ),
              ),
            ],
          ),
          10.width,
          Container(
            width: 2,
            height: 80,
            color: AppColors.sliver,
          ),
          10.width,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: AppStyles.bold14Black,),
              10.height,
              Text(subTitle)
            ],
          ),
        ],
      ),
    );
  }
}