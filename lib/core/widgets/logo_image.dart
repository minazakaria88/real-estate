import 'package:flutter/material.dart';

import '../utils/app_images.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Image.asset(
        AppImages.logoImage,
        fit: BoxFit.fill,
      ),
    );
  }
}