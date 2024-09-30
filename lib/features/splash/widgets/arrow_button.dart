import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({
    super.key, required this.onTap, required this.width, required this.height, required this.childWidget,
  });
  final Function onTap;
  final double width;
  final double height;
  final Widget childWidget;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.golden,
            width: 2,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: childWidget,
      ),
    );
  }
}