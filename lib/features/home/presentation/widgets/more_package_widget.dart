import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../core/utils/app_styles.dart';

class MoreScreenPackageWidget extends StatelessWidget {
  const MoreScreenPackageWidget({
    super.key, required this.image, required this.title, required this.onTap,
  });
  final String image;
  final String title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (){
          onTap();
        },
        child: Container(
          height:120,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: AppColors.sliver,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
              Text(title,style: AppStyles.regular12White.copyWith(color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}