import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class ChatFilterWidget extends StatelessWidget {
  const ChatFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'المحادثات',
            style: AppStyles.bold14Black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list_outlined),
          ),
        ],
      ),
    );
  }
}