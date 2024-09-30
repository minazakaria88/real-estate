import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/utils/app_colors.dart';
import 'package:realestate/core/utils/app_images.dart';
import 'package:realestate/core/utils/app_styles.dart';
import 'package:realestate/features/splash/widgets/arrow_button.dart';

import '../../core/routing/routes.dart';
import '../../core/widgets/logo_image.dart';
import '../../core/widgets/main_container_widget.dart';
import '../../core/widgets/vector_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainContainerWidget(
        childWidget: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              100.height,
              const LogoImage(),
              10.height,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: VectorWidget(
                  image: AppImages.vector1Image,
                ),
              ),
              30.height,
              Text(
                'البحث عن عقار مناسب لك اصبح الأن سهلا',
                style: AppStyles.bold16White,
                textAlign: TextAlign.center,
              ),
              20.height,
              Text(
                'مع الوسيط العقارى يوفر لك البحث السهل عن العقار الذي تريده بالموقع الجغرافى الذي تريدها',
                textAlign: TextAlign.center,
                style: AppStyles.regular12White,
              ),
              const Spacer(),
              ArrowButton(
                  width: 50,
                  height: 50,
                  childWidget: Image.asset(AppImages.arrowImage),
                  onTap: () {
                    context.pushReplacementNamed(Routes.login);
                  }),
              30.height
            ],
          ),
        ),
      ),
    );
  }
}
