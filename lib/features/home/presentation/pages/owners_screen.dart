import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/utils/app_styles.dart';
import 'package:realestate/core/widgets/my_button.dart';

import '../widgets/owner_item_widget.dart';

class OwnerScreen extends StatelessWidget {
  const OwnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: double.infinity,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      Text(
                        'المُلاك',
                        style: AppStyles.bold16black,
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const CircleAvatar(
                          backgroundColor: Colors.yellow,
                          child: Icon(Icons.close),
                        ),
                      ),
                    ],
                  ),
                  30.height,
                  const OwnerItemWidget(
                    title: 'رسوم البيع',
                    subTitle: 'تدفع بعد بيع عقد الايجار',
                  ),
                  30.height,
                  const OwnerItemWidget(
                    title: 'رسوم التاجير',
                    subTitle: 'تدفع بعد ايجار العقار',
                  ),
                  30.height,
                  const OwnerItemWidget(
                    title: 'رسوم التاجير اليومي',
                    subTitle: 'تدفع بعد كل مره يتم فيها التاجير',
                  ),
                  30.height,
                  MyButton(text: 'اشترك الان', onTap: (){}),

                ],
              ),
            ),
          ),
        ));
  }
}
