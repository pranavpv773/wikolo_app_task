import 'package:flutter/material.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';

class AppTextStyles {
  static TextStyle h1 = const TextStyle(
    letterSpacing: 1.5,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );

  static TextStyle h2 = TextStyle(
    letterSpacing: 1,
    color: AppColors.kGrey,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static TextStyle headings = TextStyle(
    color: AppColors.kWhite,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
  static TextStyle formField = TextStyle(
    color: AppColors.kGrey,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static TextStyle h3 = const TextStyle(
    color: Colors.grey,
    fontSize: 16,
  );

  static TextStyle h4 = const TextStyle(
    fontSize: 8,
  );
}
