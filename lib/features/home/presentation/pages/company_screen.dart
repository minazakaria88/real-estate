import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/utils/app_colors.dart';
import 'package:realestate/core/utils/app_styles.dart';

import '../../../../core/widgets/my_button.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({super.key});

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  String selectedPackage='50 اعلان';

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: double.infinity,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      Text(
                        'الباقات والرسوم',
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
                  20.height,
                  Text(
                    'انواع الباقات',
                    style: AppStyles.bold14Black,
                  ),
                  20.height,
                  CupertinoSlidingSegmentedControl(
                    children: const {
                      '50 اعلان':Text('50 اعلان'),
                      '150 اعلان':Text('150 اعلان'),
                      '250 اعلان':Text('250 اعلان'),
                    },
                    thumbColor: Colors.yellow,
                    padding: const EdgeInsets.all(10),
                    groupValue: selectedPackage,
                    onValueChanged: (value){
                       setState(() {
                         selectedPackage=value!;
                       });
                    },
                  ),
                  20.height,
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: AppColors.sliver,
                    ),
                    child: Text(' عدد الاعلانات : $selectedPackage'),
                  ),
                  30.height,
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
                      color: Colors.yellow,
                      child: Text(
                        'سنويا',
                        style: AppStyles.bold14Black,
                      ),
                    ),
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
