import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/widgets/my_text_from_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../edit_profile_top_widget.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: AppColors.golden),
                          image: const DecorationImage(
                              image: AssetImage(AppImages.personImage))),
                    ),
                    10.width,
                    const EditProfileTopWidget(),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.close),
                      ),
                    ),
                  ],
                ),
              ),
              50.height,
              Expanded(
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Spacer(),
                      MyTextFormField(
                        isColored: false,
                          hintText: 'اكتب رسالتك هنا...',
                          suffixWidget: IconButton(
                            onPressed: (){
                              
                            },
                            icon: const Icon(Icons.send),
                          ),
                          textEditingController: message)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
TextEditingController message=TextEditingController();
