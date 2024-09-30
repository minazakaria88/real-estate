import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class MoreAppBaWidget extends StatelessWidget {
  const MoreAppBaWidget({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.bold16black,
        ),
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: CircleAvatar(
            backgroundColor: AppColors.sliver.withOpacity(0.7),
            child: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ),
      ],
    );
  }
}