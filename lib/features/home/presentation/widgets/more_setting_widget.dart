
import 'package:flutter/material.dart';

import '../../../../core/utils/app_icons.dart';
import 'more_list_tile_widget.dart';

class MoreSettingWidget extends StatelessWidget {
  const MoreSettingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
          children: [
            ListTileMoreScreenWidget(
              title: 'المفضلة',
              onTap: (){},
              icon: AppIcons.favIcon,
            ),
            ListTileMoreScreenWidget(
              title: 'خدمة العملاء',
              onTap: (){},
              icon: AppIcons.callIcon,
            ),
            ListTileMoreScreenWidget(
              title: 'نبذة عنا',
              onTap: (){},
              icon: AppIcons.infoIcon,
            ),
            ListTileMoreScreenWidget(
              title: 'مساعدة',
              onTap: (){},
              icon: AppIcons.helpIcon,
            ),
            ListTileMoreScreenWidget(
              title: 'تسجيل الخروج',
              onTap: (){},
              icon: AppIcons.exitIcon,
            ),]),
    );
  }
}