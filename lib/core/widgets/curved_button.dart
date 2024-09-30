import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CurvedButton extends StatelessWidget {
  const CurvedButton({
    super.key, required this.text, required this.onTap, this.color,
  });
  final String text;
  final Function onTap;
  final Color ?color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration:  BoxDecoration(
          color: color??AppColors.primaryColor,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Center(child: Text(text,style: AppStyles.regular12White,)),
      ),
    );
  }
}