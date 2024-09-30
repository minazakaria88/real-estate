
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/routing/routes.dart';
import 'package:realestate/core/utils/app_images.dart';
import 'package:realestate/core/utils/app_styles.dart';
import 'package:realestate/core/widgets/logo_image.dart';
import 'package:realestate/core/widgets/main_container_widget.dart';
import 'package:realestate/core/widgets/vector_widget.dart';
import 'package:realestate/features/splash/widgets/arrow_button.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/my_text_from_field.dart';
import '../widgets/profile_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  bool isObscure = true;
  bool isObscure2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: MainContainerWidget(
          childWidget: Padding(
            padding: const EdgeInsets.all(15.0),
            child: CustomScrollView(slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    20.height,
                    const Center(child: LogoImage()),
                    10.height,
                    const VectorWidget(
                      image: AppImages.vector2Image,
                    ),
                    const ProfileContainer(
                      text: 'إنشاء حساب',
                    ),
                    10.height,
                    Text(
                      'رقم الهاتف',
                      style: AppStyles.regular14White,
                    ),
                    15.height,
                    IntlPhoneField(
                      decoration:  const InputDecoration(
                        labelText: 'أكتب رقم هاتفك هنا...',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.sliver
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.sliver
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.sliver
                          ),
                        )
                      ),
                      style: AppStyles.regular14White,
                      initialCountryCode: 'EG',
                      languageCode: 'ar',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    10.height,
                    MyTextFormField(
                      hintText: 'أكتب البريد الإلكترونى هنا...',
                      suffixWidget: Text(
                        'إختيارى',
                        style: AppStyles.regular12White,
                      ),
                      textEditingController: emailController,
                    ),
                    20.height,
                    Text(
                      'كلمة المرور',
                      style: AppStyles.regular14White,
                    ),
                    10.height,
                    MyTextFormField(
                      hintText: 'أكتب كلمة المرور هنا...',
                      obscureText: isObscure,
                      suffixWidget:  InkWell(
                        onTap: (){
                          isObscure=!isObscure;
                          setState(() {});
                        },
                        child: Icon(
                          isObscure? Icons.visibility : Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        ),
                      ),
                      textEditingController: passwordController,
                    ),
                    10.height,
                    MyTextFormField(
                      hintText: 'أكتب كلمة المرور مرة اخرى ...',
                      obscureText: isObscure2,
                      suffixWidget:  InkWell(
                        onTap: (){
                          isObscure2=!isObscure2;
                          setState(() {});
                        },
                        child: Icon(isObscure2? Icons.visibility : Icons.remove_red_eye_outlined,
                            color: Colors.white),
                      ),
                      textEditingController: repeatPasswordController,
                    ),
                    20.height,
                    Center(
                      child: ArrowButton(
                        onTap: () {
                          context.pushReplacementNamed(Routes.home);
                        },
                        width: 150,
                        height: 50,
                        childWidget: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(AppImages.arrowImage),
                            Text(
                              'إنشاء حساب',
                              style: AppStyles.regular14White,
                            ),
                          ],
                        ),
                      ),
                    ),
                    25.height,
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(Routes.register);
                      },
                      child: Center(
                        child: Text(
                          'انا لدى حساب بالفعل',
                          style: AppStyles.regular14White,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
