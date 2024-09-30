import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';

class AdvertiseListviewItem extends StatelessWidget {
  const AdvertiseListviewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 107,
              child: Image.asset(
                AppImages.building,
              ),
            ),
            5.width,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'شقق سكنية بمساحات مختلفة داخل كمبوند متكامل',
                    style: AppStyles.bold12black,
                  ),
                  5.height,
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Color(0XFF6C6C6C),
                      ),
                      Expanded(
                        child: Text(
                          'طريق الملك فهد، العليا، الرياض',
                          style: AppStyles.regular25White
                              .copyWith(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  5.height,
                  const Text('300 متر'),
                  5.height,
                  Text('7,650, ريال', style: AppStyles.extraBold16Brown),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Flexible(
                        child: Text(
                          'منذ 3 ساعة',
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.favorite)),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      context.pushNamed(Routes.buildingDetails);
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
