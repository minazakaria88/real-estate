import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';

import '../utils/app_colors.dart';

class MainContainerWidget extends StatelessWidget {
  const MainContainerWidget({
    super.key,
    required this.childWidget,
  });
  final Widget childWidget;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.all(7),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              border: Border.all(
                color: AppColors.golden,
                width: 2,
              )),
          child: childWidget,
        ),
      ),
    );
  }
}
