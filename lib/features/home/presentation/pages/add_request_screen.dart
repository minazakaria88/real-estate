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
import '../../../search/presentation/widgets/search_check_box_widget.dart';

class AddRequestScreen extends StatelessWidget {
  const AddRequestScreen({super.key});
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
                    const MoreAppBaWidget(title: 'إضافة طلب'),
                    10.height,
                    const DividerWidget(),
                    10.height,
                    Text(
                      'نوع العقار',
                      style: AppStyles.bold14Black,
                    ),
                    10.height,
                    const DropdownWidget(
                      hintText: 'إختر نوع العقار',
                    ),
                    10.height,
                    Text(
                      'نوع الإعلان',
                      style: AppStyles.bold14Black,
                    ),
                    10.height,
                    const DropdownWidget(
                      hintText: 'إختر نوع الإعلان',
                    ),
                    Text(
                      'نوع الإيجار',
                      style: AppStyles.bold14Black,
                    ),
                    10.height,
                    const DropdownWidget(
                      hintText: 'إختر نوع الإيجار',
                    ),
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
                    const SearchCheckBoxWidget(
                      text: 'مؤثثة',
                    ),
                    20.height,
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
                        text: 'تسليم الطلب',
                        onTap: () {

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
