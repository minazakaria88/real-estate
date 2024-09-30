import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/utils/app_styles.dart';
import 'package:realestate/core/widgets/line_image_widget.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/curved_button.dart';
import '../../../../core/widgets/dropdown_widget.dart';
import '../../../../core/widgets/my_text_from_field.dart';
import '../../../search/presentation/pages/search_screen.dart';
import '../../../search/presentation/widgets/search_check_box_widget.dart';
import '../widgets/advertise_type_widget.dart';
import '../widgets/more_app_bar_widget.dart';

class AddAdvertiseFirstScreen extends StatelessWidget {
  const AddAdvertiseFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(textDirection: TextDirection.rtl, child: SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MoreAppBaWidget(title: 'إضافة إعلان عقار'),
              20.height,
              Text('تحديد نوع الإعلان',style: AppStyles.bold14Black,),
              20.height,
              const AdvertiseTypeWidget(),
              10.height,
              const LineImageWidget(),
              20.height,
              Text(
                'نوع العقار',
                style: AppStyles.bold14Black,
              ),
              10.height,
              const DropdownWidget(
                hintText: 'إختر نوع العقار',
              ),
              20.height,
              Text(
                'مدة السكن',
                style: AppStyles.bold14Black,
              ),
              10.height,
              const DropdownWidget(
                hintText: 'إختر مدة السكن ',
              ),
              20.height,
              const LineImageWidget(),
              20.height,
              Text(
                'تحديد السعر',
                style: AppStyles.bold14Black,
              ),
              20.height,
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
              10.height,
              20.height,
              const SearchCheckBoxWidget(
                text: 'مؤثثة',
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
                  text: 'التالى',
                  onTap: () {
                    context.pushNamed(Routes.addAdvertiseSecondScreen);
                  }),
              20.height,
          
            ],
          ),
        ),
      ),
    ),));
  }
}
