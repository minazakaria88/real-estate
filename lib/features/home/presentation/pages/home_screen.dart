import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/routing/routes.dart';
import 'package:realestate/core/utils/app_colors.dart';
import 'package:realestate/core/utils/app_icons.dart';
import 'package:realestate/core/utils/app_images.dart';
import 'package:realestate/core/utils/app_styles.dart';
import 'package:realestate/core/widgets/divder_widget.dart';
import 'package:realestate/features/home/presentation/widgets/bottom_nav_widget/chat_screen.dart';
import 'package:realestate/features/home/presentation/widgets/bottom_nav_widget/more_screen.dart';
import 'package:realestate/features/home/presentation/widgets/bottom_nav_widget/profile_widget.dart';

import '../widgets/bottom_nav_widget/main_home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  bool showDraggable = false;
  bool showAlertDialog = false;
  bool isAccepted=false;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          key: scaffoldKey,
          bottomNavigationBar: buildBottomAppBar(),
          floatingActionButton: FloatingActionButton(
              elevation: 10,
              backgroundColor: AppColors.golden,
              onPressed: () {
                showDraggable = !showDraggable;
                setState(() {});
              },
              shape: const CircleBorder(),
              child: Image.asset(AppImages.addImage)),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: Stack(
            children: [
              bottomNavScreens[selectedIndex],
              if (showDraggable) buildDraggableScrollableSheet(),
              if (showAlertDialog)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DraggableScrollableSheet(
                    builder: (context, scrollController) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: 'تنبيه\n',
                                    style: AppStyles.bold16black
                                        .copyWith(color: Colors.red)),
                                TextSpan(
                                    text: ' شروط إضافة إعلان',
                                    style: AppStyles.bold16black
                                        .copyWith(color: Colors.black))
                              ])),
                              10.height,
                              const DividerWidget(),
                              20.height,
                              const Text(
                                  'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.'),
                              Row(
                                children: [
                                  Checkbox(
                                    activeColor: AppColors.golden,
                                    value: isAccepted,
                                    onChanged: (value){
                                      setState(() {
                                        isAccepted=value!;
                                      });
                                    },
                                  ),
                                  const Text('اتعهد واوفق على جميع الشروط '),
                                ],
                              ),
                              10.height,
                              InkWell(
                                onTap: (){
                                    context.pushNamed(Routes.pickLocationScreen,arguments: false);
                                    isAccepted=false;
                                    showAlertDialog=false;
                                    setState(() {

                                    });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(20)
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('إستمرار',style: AppStyles.regular14White,),
                                        20.width,
                                        const Icon(Icons.arrow_forward,color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  DraggableScrollableSheet buildDraggableScrollableSheet() {
    return DraggableScrollableSheet(
      maxChildSize: 0.8,
      minChildSize: 0.25,
      initialChildSize: 0.25,
      builder: (context, scrollController) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(150),
              topRight: Radius.circular(150),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {
                    showAlertDialog = true;
                    showDraggable = false;
                    setState(() {});
                  },
                  icon: Image.asset(AppImages.addBuildingImage),
                ),
              ),
              Container(
                color: AppColors.sliver,
                width: 2,
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    context.pushNamed(Routes.pickLocationScreen,
                        arguments: true);
                    showDraggable = false;
                    setState(() {});
                  },
                  icon: Image.asset(AppImages.specialRequestImage),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomAppBar() {
    return SizedBox(
      height: 100,
      child: BottomAppBar(
        color: AppColors.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  selectedIndex = 0;
                  setState(() {});
                },
                icon: Column(
                  children: [
                    Image.asset(
                      AppIcons.homeIcon,
                      color: selectedIndex == 0
                          ? null
                          : Colors.grey.withOpacity(0.8600),
                    ),
                    Text(
                      'الرئيسية',
                      style: selectedIndex == 0
                          ? AppStyles.regular12White
                              .copyWith(color: AppColors.golden)
                          : AppStyles.regular12White,
                    ),
                  ],
                )),
            IconButton(
                onPressed: () {
                  selectedIndex = 1;
                  setState(() {});
                },
                icon: Column(
                  children: [
                    Image.asset(AppIcons.userIcon,
                        color: selectedIndex == 1 ? AppColors.golden : null),
                    Text(
                      'حسابى',
                      style: selectedIndex == 1
                          ? AppStyles.regular12White
                              .copyWith(color: AppColors.golden)
                          : AppStyles.regular12White,
                    ),
                  ],
                )),
            48.width,
            IconButton(
                onPressed: () {
                  selectedIndex = 2;
                  setState(() {});
                },
                icon: Column(
                  children: [
                    Image.asset(AppIcons.chatIcon,
                        color: selectedIndex == 2 ? AppColors.golden : null),
                    Text(
                      'محادثة',
                      style: selectedIndex == 2
                          ? AppStyles.regular12White
                              .copyWith(color: AppColors.golden)
                          : AppStyles.regular12White,
                    ),
                  ],
                )),
            IconButton(
                onPressed: () {
                  selectedIndex = 3;
                  setState(() {});
                },
                icon: Column(
                  children: [
                    Image.asset(
                      AppIcons.moreIcon,
                      color: selectedIndex == 3 ? AppColors.golden : null,
                    ),
                    Text(
                      'المزيد',
                      style: selectedIndex == 3
                          ? AppStyles.regular12White
                              .copyWith(color: AppColors.golden)
                          : AppStyles.regular12White,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

List<Widget> bottomNavScreens = [
  const MainHomeWidget(),
  const EditProfile(),
  const ChatScreen(),
  const MoreScreen(),
];
