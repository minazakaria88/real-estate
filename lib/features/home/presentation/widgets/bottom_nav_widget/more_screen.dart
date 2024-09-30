import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/routing/routes.dart';
import 'package:realestate/core/utils/app_icons.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/divder_widget.dart';
import '../edit_profile_top_widget.dart';
import '../more_package_widget.dart';
import '../more_setting_widget.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
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
                  ],
                ),
              ),
              20.height,
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الباقات والرسوم',
                        style: AppStyles.bold14Black,
                      ),
                      20.height,
                      const DividerWidget(),
                      20.height,
                      Row(
                        children: [
                          MoreScreenPackageWidget(
                            onTap: () {
                              context.pushNamed(Routes.owner);
                            },
                            image: AppIcons.ownerIcon,
                            title: 'المُلاك',
                          ),
                          15.width,
                          MoreScreenPackageWidget(
                            onTap: () {
                              context.pushNamed(Routes.company);
                            },
                            image: AppIcons.companyIcon,
                            title: 'المكاتب والمسوقين',
                          ),
                        ],
                      ),
                      20.height,
                      const DividerWidget(),
                      15.height,
                      const MoreSettingWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


