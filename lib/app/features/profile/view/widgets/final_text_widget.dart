import 'package:flutter/material.dart';
import 'package:wikolo_app/app/core/app_textstyles/app_textstyles.dart';

class FinalTextWidget extends StatelessWidget {
  const FinalTextWidget({Key? key, required this.para}) : super(key: key);
  final String para;
  @override
  Widget build(BuildContext context) {
    return Text(
      para,
      style: AppTextStyles.h3,
    );
  }
}
