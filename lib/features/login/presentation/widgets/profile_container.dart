import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  const BoxDecoration(
        color: AppColors.golden,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          text,
          style: AppStyles.bold12black,
        ),
      ),
    );
  }
}