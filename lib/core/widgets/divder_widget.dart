
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: double.infinity,
      color: AppColors.sliver,
    );
  }
}