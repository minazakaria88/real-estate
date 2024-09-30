import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/utils/app_colors.dart';
import 'package:realestate/core/utils/app_icons.dart';
import 'package:realestate/core/utils/app_images.dart';
import 'package:realestate/core/utils/app_styles.dart';
import 'package:realestate/core/widgets/divder_widget.dart';
import 'package:realestate/core/widgets/line_image_widget.dart';

import '../building_details_contact_info.dart';
import '../building_details_widget.dart';
import '../more_app_bar_widget.dart';

class BuildingDetailsScreen extends StatelessWidget {
  const BuildingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MoreAppBaWidget(
                  title: 'تفاصيل العقار',
                ),
                10.height,
                const DividerWidget(),
                10.height,
                SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: Image.asset(
                    AppImages.building,
                    fit: BoxFit.fill,
                  ),
                ),
                20.height,
                const LineImageWidget(),
                10.height,
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'شقق سكنية بمساحات مختلفة داخل كمبوند متكامل',
                        style: AppStyles.bold14Black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                  ],
                ),
                10.height,
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: Text(
                        'طريق الملك فهد، العليا، الرياض',
                        style: AppStyles.bold14Black
                            .copyWith(color: AppColors.sliver),
                      ),
                    ),
                    Text(
                      '300 متر',
                      style: AppStyles.bold14Black
                          .copyWith(color: AppColors.sliver),
                    ),
                  ],
                ),
                20.height,
                const LineImageWidget(),
                20.height,
                Text(
                  'التفاصيل',
                  style: AppStyles.bold14Black,
                ),
                10.height,
                Text(
                  'لمشروع سكني متكامل الخدمات في قلب الشيخ زايد علي كل خدمات و الطرق والمحاور الرئيسيه علي مساحه بنائيه علي ٢٢% فقط بكثافهسكانيه منخفضه عمارات ٤ ادوار فقط وخدمات ومساحات خضراء علي نسبه ٧٨٪ من مساحة المشروع',
                  style: AppStyles.regular14White
                      .copyWith(color: AppColors.sliver),
                ),
                20.height,
                const LineImageWidget(),
                10.height,
                Text(
                  'مواصفات العقار',
                  style: AppStyles.bold14Black,
                ),
                20.height,
                const BuildingDetailsWidget(title: 'عدد الصالات', count: 3),
                const BuildingDetailsWidget(
                    title: 'عدد دورات المياه', count: 7),
                const BuildingDetailsWidget(title: 'عدد الصالات', count: 3),
                const BuildingDetailsWidget(title: 'عدد الصالات', count: 3),
                20.height,
                const LineImageWidget(),
                20.height,
                Text(
                  'معلومات المعلن',
                  style: AppStyles.bold14Black,
                ),
                20.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(AppImages.personImage),
                    ),
                    5.width,
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'عبدالله محمد',
                            style: AppStyles.bold16black,
                          ),
                          10.height,
                          Text(
                            'حساب موثق',
                            style: AppStyles.regular12White
                                .copyWith(color: AppColors.golden),
                          ),
                        ],
                      ),
                    ),
                    ContactInfoWidget(
                      onTap: (){},
                      image: AppIcons.messageIcon,
                      name: 'محادثة',
                    ),
                    ContactInfoWidget(
                      onTap: (){},
                      image: AppIcons.whatsappIcon,
                      name: 'واتساب',
                    ),
                    ContactInfoWidget(
                      onTap: (){},
                      image: AppIcons.phoneIcon,
                      name: 'إتصال',
                    ),
                  ],
                ),
                30.height,
              ],
            ),
          ),
        ),
      ),
    ));
  }
}


