import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/divder_widget.dart';

class BuildingDetailsWidget extends StatelessWidget {
  const BuildingDetailsWidget({
    super.key, required this.title, required this.count,
  });
  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( title,style: AppStyles.bold14Black,),
              Text( '$count',style: AppStyles.bold14Black,),
            ],
          ),
          20.height,
          const DividerWidget(),
        ],
      ),
    );
  }
}