import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../chat_filter_widget.dart';
import '../chat_listview_item.dart';
import '../edit_profile_top_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(width: 2, color: AppColors.golden),
                            image: const DecorationImage(
                                image: AssetImage(AppImages.personImage))),
                      ),
                      10.width,
                      const EditProfileTopWidget(),
                    ],
                  ),
                ),
                20.height,
                Expanded(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        20.height,
                        const ChatFilterWidget(),
                        5.height,
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: AppColors.sliver,
                        ),
                        5.height,
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ListView.separated(
                                itemBuilder: (context, index) => const ChatListViewItem(),
                                separatorBuilder: (context, index) => 10.height,
                                itemCount: 3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
