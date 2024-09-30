import 'package:flutter/material.dart';

import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/utils/app_colors.dart';
import 'package:realestate/core/utils/app_images.dart';
import 'package:realestate/core/utils/app_styles.dart';
import 'package:realestate/core/widgets/my_text_from_field.dart';

class EditProfileSecondScreen extends StatelessWidget {
  const EditProfileSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: AppColors.primaryColor,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.close),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.08),
                          Text(
                            'الإسم',
                            style: AppStyles.regular14White
                                .copyWith(color: Colors.black),
                          ),
                          10.height,
                          MyTextFormField(
                              hintText: 'الإسم',
                              isColored: false,
                              suffixWidget: IconButton(onPressed: (){},icon: const Text('تغيير')),
                              textEditingController: name),
                          10.height,
                          Text(
                            'كلمة المرور',
                            style: AppStyles.regular14White
                                .copyWith(color: Colors.black),
                          ),
                          10.height,
                          MyTextFormField(
                              hintText: 'كلمة المرور',
                              isColored: false,
                              suffixWidget: IconButton(onPressed: (){},icon: const Text('تغيير')),
                              textEditingController: password),
                          10.height,
                          Text(
                            'رقم الهاتف',

                            style: AppStyles.regular14White
                                .copyWith(color: Colors.black),
                          ),
                          10.height,
                          MyTextFormField(
                              isColored: false,
                              hintText: 'رقم الهاتف',
                              suffixWidget: IconButton(onPressed: (){},icon: const Text('تغيير')),
                              textEditingController: phoneNumber),
                          10.height,
                          Text(
                            'البريد الإلكترونى',
                            style: AppStyles.regular14White
                                .copyWith(color: Colors.black),
                          ),
                          10.height,
                          MyTextFormField(
                              isColored: false,
                              hintText: 'البريد الإلكترونى',
                              suffixWidget: IconButton(onPressed: (){},icon: const Text('تغيير')),
                              textEditingController: name),
                          10.height,
                          Text(
                            'نبذة عنك',
                            style: AppStyles.regular14White
                                .copyWith(color: Colors.black),
                          ),
                          10.height,
                          MyTextFormField(
                              isColored: false,
                              hintText: 'نبذة عنك',
                              suffixWidget: IconButton(onPressed: (){},icon: const Text('تغيير')),
                              textEditingController: aboutYou),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.3,
              left: MediaQuery.of(context).size.width * 0.36,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: AppColors.golden,
                  ),
                ),
                height: 120,
                width: 120,
                child: Image.asset(
                  AppImages.personImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

TextEditingController name = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController aboutYou = TextEditingController();
TextEditingController phoneNumber = TextEditingController();
