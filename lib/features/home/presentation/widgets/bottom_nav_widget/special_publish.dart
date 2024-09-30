import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/utils/app_colors.dart';
import 'package:realestate/core/utils/app_images.dart';
import 'package:realestate/core/utils/app_styles.dart';
import 'package:realestate/core/widgets/divder_widget.dart';
import 'package:realestate/features/home/presentation/widgets/more_package_type.dart';

import '../../../../../core/widgets/curved_button.dart';
import '../../../../../core/widgets/line_image_widget.dart';
import '../more_app_bar_widget.dart';

class SpecialPublish extends StatelessWidget {
  const SpecialPublish({super.key});

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
                    const SizedBox(
                      width: double.infinity,
                    ),
                    const MoreAppBaWidget(
                      title:'نشر مميز',
                    ),
                    10.height,
                    const DividerWidget(),
                    15.height,
                    const MorePackageType(),
                    15.height,
                    const LineImageWidget(),
                    50.height,
                    Center(
                        child: Text(
                      '1500 ريال',
                      style: AppStyles.bold40black,
                    )),
                    15.height,
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        color: AppColors.golden,
                        child: Text(
                          'فقط لا غير',
                          style: AppStyles.bold16black,
                        ),
                      ),
                    ),
                    Text(
                      'التفاصيل',
                      style: AppStyles.bold14Black,
                    ),
                    10.height,
                    Text(
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيقهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق..',
                      style: AppStyles.regular12White
                          .copyWith(color: AppColors.sliver),
                    ),
                    10.height,
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        AppImages.lineList,
                        fit: BoxFit.fill,
                      ),
                    ),
                    20.height,
                     CurvedButton(
                       onTap: (){},
                       text: 'إشتراك الان',
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




