import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/routing/routes.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';

class ChatListViewItem extends StatelessWidget {
  const ChatListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.sliver,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 2, color: AppColors.golden),
                  image: const DecorationImage(
                    image:
                    AssetImage(AppImages.personImage),
                  ),
                ),
              ),
              10.width,
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'شقق سكنية بمساحات مختلفة داخل كمبوند متكامل',
                      style: AppStyles.bold12black,
                    ),
                    5.height,
                    Text(
                      '7,650, ريال',
                      style: AppStyles.extraBold16Brown,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    context.pushNamed(Routes.chatDetailsScreen);
                  },
                  icon: const Row(
                    children: [
                      Expanded(
                        child: Text(
                          'مشاهدة التفاصيل',
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          2.height,
          Container(
            width: double.infinity,
            height: 2,
            color: AppColors.sliver,
          ),
          5.height,
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  AppImages.personImage,
                ),
              ),
              5.width,
              Expanded(
                  child: Text(
                    'لمشروع سكني متكامل الخدمات في قلب الشيخ زايد علي كل خدمات و الطرق والمحاور الرئيسيه علي مساحه بنائيه علي ٢٢% فقط بكثافه سكانيه منخفضه عمارات ٤ ادوار فقط وخدمات ومساحات خضراء علي نسبه ٧٨٪ من مساحة المشروع',
                    style: AppStyles.regular12White.copyWith(color: Colors.black),
                  )),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'منذ 3 ساعة',
              style: AppStyles.regular8Black.copyWith(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}