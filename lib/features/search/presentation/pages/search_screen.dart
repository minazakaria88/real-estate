import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/routing/routes.dart';
import 'package:realestate/core/utils/app_styles.dart';
import 'package:realestate/core/widgets/curved_button.dart';
import 'package:realestate/core/widgets/divder_widget.dart';
import 'package:realestate/core/widgets/line_image_widget.dart';
import 'package:realestate/core/widgets/my_text_from_field.dart';
import 'package:realestate/features/home/presentation/widgets/more_app_bar_widget.dart';

import '../../../../core/widgets/dropdown_widget.dart';
import '../widgets/search_check_box_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
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
                    Container(),
                    const MoreAppBaWidget(title: 'بحث متقدم'),
                    10.height,
                    const DividerWidget(),
                    10.height,
                    Text(
                      'ترتيب حسب',
                      style: AppStyles.bold14Black,
                    ),
                    10.height,
                    const DropdownWidget(),
                    10.height,
                    Text(
                      'توقيت الإعلان',
                      style: AppStyles.bold14Black,
                    ),
                    10.height,
                    const DropdownWidget(),
                    20.height,
                    const LineImageWidget(),
                    20.height,
                    Text(
                      'تحديد السعر',
                      style: AppStyles.bold14Black,
                    ),
                    10.height,
                    Row(
                      children: [
                        Expanded(
                          child: MyTextFormField(
                            isColored: false,
                            hintText: 'السعر الأدنى',
                            suffixWidget: const Text('ريال'),
                            textEditingController: minPrice,
                          ),
                        ),
                        10.width,
                        Expanded(
                          child: MyTextFormField(
                            isColored: false,
                            hintText: 'السعر الأعلى',
                            suffixWidget: const Text('ريال'),
                            textEditingController: maxPrice,
                          ),
                        ),
                      ],
                    ),
                    20.height,
                    Text(
                      'الموقع',
                      style: AppStyles.bold14Black,
                    ),
                    10.height,
                    MyTextFormField(
                      isColored: false,
                      hintText: 'الموقع',
                      suffixWidget:const SizedBox(),
                      textEditingController: location,
                    ),
                    20.height,
                    const LineImageWidget(),
                    20.height,
                    Text(
                      'مواصفات العقار',
                      style: AppStyles.bold14Black,
                    ),
                    10.height,
                    const DropdownWidget(
                      hintText: 'نوع الوحدة',
                    ),
                    const DropdownWidget(
                      hintText: 'عدد الغرف',
                    ),
                    const DropdownWidget(
                      hintText: 'عدد الصالات',
                    ),
                    const DropdownWidget(
                      hintText: 'عدد دورات المياه',
                    ),
                    const DropdownWidget(
                      hintText: 'رقم الدور',
                    ),
                    const DropdownWidget(
                      hintText: 'غمر العقار',
                    ),
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
                    CurvedButton(
                        text: 'عرض نتائج',
                        onTap: () {
                          context.pushNamed(Routes.searchResult);
                        }),
                    20.height,
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}



TextEditingController minPrice = TextEditingController();
TextEditingController maxPrice = TextEditingController();
TextEditingController location = TextEditingController();
