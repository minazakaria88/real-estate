import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class SearchCheckBoxWidget extends StatefulWidget {
  const SearchCheckBoxWidget({
    super.key, required this.text,
  });
 final String text;

  @override
  State<SearchCheckBoxWidget> createState() => _SearchCheckBoxWidgetState();
}

class _SearchCheckBoxWidgetState extends State<SearchCheckBoxWidget> {
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(
              width: 2,
              color: AppColors.sliver
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: AppStyles.regular12White.copyWith(color: Colors.black),
          ),
          Checkbox(
            activeColor: AppColors.golden,
            value: isSelected,
            onChanged:(value){
              setState(() {
                isSelected=value!;
              });
            },
          ),
        ],
      ),
    );
  }
}