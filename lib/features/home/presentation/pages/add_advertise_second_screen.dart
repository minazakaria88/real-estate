import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/routing/routes.dart';
import 'package:realestate/core/utils/app_colors.dart';
import 'package:realestate/core/utils/app_icons.dart';
import 'package:realestate/core/utils/app_styles.dart';
import 'package:realestate/core/widgets/curved_button.dart';
import 'package:realestate/core/widgets/divder_widget.dart';
import 'package:realestate/core/widgets/line_image_widget.dart';

import '../../../../core/widgets/my_text_from_field.dart';
import '../../../search/presentation/pages/search_screen.dart';
import '../../../search/presentation/widgets/search_check_box_widget.dart';
import '../widgets/advertise_sceond_screen_type.dart';
import '../widgets/more_app_bar_widget.dart';

class AddAdvertiseSecondScreen extends StatefulWidget {
  const AddAdvertiseSecondScreen({super.key});

  @override
  State<AddAdvertiseSecondScreen> createState() =>
      _AddAdvertiseSecondScreenState();
}

class _AddAdvertiseSecondScreenState extends State<AddAdvertiseSecondScreen> {
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MoreAppBaWidget(title: 'إضافة إعلان عقار'),
                    20.height,
                    const DividerWidget(),
                    20.height,
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: AppColors.sliver),
                        ),
                        child: Column(
                          children: [
                            Image.asset(AppIcons.videoIcon),
                            10.height,
                            Text(
                              'إرفاق فيديو',
                              style: AppStyles.bold14Black,
                            ),
                            10.height,
                            const Text(
                                'يجب ان يكون حجم الفيديو لا يتعدى 40 ميجا'),
                            20.height,
                          ],
                        ),
                      ),
                    ),
                    20.height,
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: AppColors.sliver),
                        ),
                        child: Column(
                          children: [
                            Image.asset(AppIcons.imageIcon),
                            10.height,
                            Text(
                              'إرفاق صور',
                              style: AppStyles.bold14Black,
                            ),
                            10.height,
                            const Text(
                                'يجب ان يكون حجم الصور لا يتعدى 40 ميجا'),
                            20.height,
                          ],
                        ),
                      ),
                    ),
                    20.height,
                    const LineImageWidget(),
                    20.height,
                    20.height,
                    Text(
                      'المساحة',
                      style: AppStyles.bold14Black,
                    ),
                    10.height,
                    MyTextFormField(
                      isColored: false,
                      hintText: 'الطول',
                      suffixWidget: const SizedBox(),
                      textEditingController: location,
                    ),
                    20.height,
                    MyTextFormField(
                      isColored: false,
                      hintText: 'العرض',
                      suffixWidget: const SizedBox(),
                      textEditingController: location,
                    ),
                    20.height,
                    const LineImageWidget(),
                    20.height,
                    const SearchCheckBoxWidget(
                      text: 'مكيفة',
                    ),
                    10.height,
                    const SearchCheckBoxWidget(
                      text: 'جراج للسيارات',
                    ),
                    20.height,
                    const LineImageWidget(),
                    20.height,
                    Text(
                      'وصف العقار',
                      style: AppStyles.bold14Black,
                    ),
                    10.height,
                    MyTextFormField(
                      isColored: false,
                      hintText: 'أكتب نبذه عن مواصفات الإعلان',
                      suffixWidget: const SizedBox(),
                      textEditingController: location,
                    ),
                    20.height,
                    const LineImageWidget(),
                    20.height,
                    const AdvertiseSecondScreenType(),
                    20.height,
                    Row(
                      children: [
                        Checkbox(
                          activeColor: AppColors.golden,
                          value: isAccepted,
                          onChanged: (value) {
                            setState(() {
                              isAccepted = value!;
                            });
                          },
                        ),
                        const Text('اتعهد واوفق على جميع الشروط '),
                      ],
                    ),
                    20.height,
                    CurvedButton(
                      text: 'نشر عادى',
                      onTap: (){},
                    ),
                    20.height,
                    CurvedButton(
                      color: AppColors.golden,
                      text: 'نشر مميز',
                      onTap: (){
                        context.pushNamed(Routes.moreDetailsScreen);
                      },
                    ),
                    20.height,
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
