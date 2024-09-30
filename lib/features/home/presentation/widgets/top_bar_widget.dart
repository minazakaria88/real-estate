import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_styles.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'الرياض',
                    style: AppStyles.regular25White,
                  ),
                  5.height,
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        'طريق الملك فهد، العليا، الرياض',
                        style: AppStyles.regular25White.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: (){},
                icon: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.notifications),
                ),
              ),
              IconButton(
                onPressed: (){
                  context.pushNamed(Routes.search);
                },
                icon: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.search),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}