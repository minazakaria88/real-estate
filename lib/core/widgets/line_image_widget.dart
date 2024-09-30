import 'package:flutter/material.dart';

import '../utils/app_images.dart';

class LineImageWidget extends StatelessWidget {
  const LineImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        AppImages.lineList,
        fit: BoxFit.fill,
      ),);
  }
}