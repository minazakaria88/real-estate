import 'package:flutter/material.dart';
import 'package:realestate/core/utils/app_colors.dart';

class AppStyles {
  static TextStyle bold16White = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);

  static TextStyle bold14Black = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black);

  static TextStyle regular12White = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.white.withOpacity(0.70));

  static TextStyle regular25White = const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: Colors.white);

  static TextStyle regular14White = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.white.withOpacity(0.70));

  static TextStyle regular8Black = TextStyle(
      fontSize: 8,
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.50));

  static TextStyle extraBold16Brown = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: Color(0XFFB8822B));

  static TextStyle bold12black = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.primaryColor);

  static TextStyle bold16black = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black);

  static TextStyle bold40black = const TextStyle(
      fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black);
}
