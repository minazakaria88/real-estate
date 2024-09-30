import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/utils/app_icons.dart';
import 'package:realestate/core/utils/app_images.dart';
import 'package:realestate/core/utils/app_styles.dart';
import 'package:realestate/features/home/presentation/widgets/edit_profile__adervtise_listview_item.dart';
import '../edit_profile_advertise_widget.dart';
import '../edit_profile_app_bar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          50.height,
          const EditProfileAppBar(),
          50.height,
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: const Color(0xffD9D9D9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildColumn(text: 'باقى الإعلانات', image: AppIcons.circleIcon),
                buildColumn(
                    text: 'منذ 2021/7/15', image: AppIcons.calendarIcon),
                buildColumn(text: 'عميل مشترك', image: AppIcons.starIcon),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  const AdvertiseWidget(),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) => const AdvertiseListviewItem(),
                        separatorBuilder: (context, index) => SizedBox(
                          width: double.infinity,
                          child: Image.asset(AppImages.lineList),
                        ),
                        itemCount: 2),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }

  Column buildColumn({required String text, required String image}) {
    return Column(
      children: [Image.asset(image), Text(text)],
    );
  }
}
