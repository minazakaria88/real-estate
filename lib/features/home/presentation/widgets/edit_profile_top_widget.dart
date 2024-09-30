import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';

import '../../../../core/utils/app_styles.dart';

class EditProfileTopWidget extends StatelessWidget {
  const EditProfileTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'عبدالله محمد',
          style: AppStyles.regular25White.copyWith(fontSize: 16),
        ),
        3.height,
        Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            ),
            Text(
              'طريق الملك فهد، العليا، الرياض',
              style: AppStyles.regular25White.copyWith(fontSize: 10),
            ),
          ],
        ),
      ],
    );
  }
}