import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({
    super.key,
    required this.image,
    required this.name,
    required this.onTap,
  });
  final String image;
  final String name;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(image),
            Text(
              name,
              style: AppStyles.regular8Black,
            )
          ],
        ),
      ),
    );
  }
}