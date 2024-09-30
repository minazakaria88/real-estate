import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/routing/routes.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import 'edit_profile_top_widget.dart';

class EditProfileAppBar extends StatelessWidget {
  const EditProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: AppColors.golden),
              image: const DecorationImage(
                  image: AssetImage(AppImages.personImage))),
        ),
        10.width,
        const EditProfileTopWidget(),
        IconButton(
          onPressed: () {
            context.pushNamed(Routes.editProfile);
          },
          icon: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.mode_edit_rounded),
          ),
        ),
      ],
    );
  }
}