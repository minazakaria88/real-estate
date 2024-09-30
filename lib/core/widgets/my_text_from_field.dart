import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.hintText,
    required this.suffixWidget,
    this.obscureText = false,
    required this.textEditingController,
    this.isColored, this.valid,
  });
  final String hintText;
  final Widget suffixWidget;
  final bool obscureText;
  final bool? isColored;
  final Function ? valid;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: textEditingController,
        validator: (value){
          if(valid !=null)
            {
              return valid!(value);
            }
          return null;
        },
        cursorColor: AppColors.white20,
        style: isColored==null?AppStyles.regular12White:AppStyles.regular12White.copyWith(color: Colors.black),
        obscureText: obscureText,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.white20,
              ),
            ),
            hintText: hintText,
            hintStyle:isColored==null? AppStyles.regular12White:AppStyles.regular12White.copyWith(color: Colors.black),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.golden,
              ),
            ),
            fillColor: Colors.black.withOpacity(0.23),
            filled: isColored==null? true:false,
            suffixIcon: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: suffixWidget)),
      ),
    );
  }
}
