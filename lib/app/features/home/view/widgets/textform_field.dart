// ignore_for_file: body_might_complete_normally_nullable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:provider/provider.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/features/home/view_model/home_notifier.dart';

class TextformsField extends StatelessWidget {
  const TextformsField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return TextFormField(
      textAlign: TextAlign.center,
      controller: context.read<HomeNotifier>().searchCntrl,
      style: TextStyle(
        height: 1.5,
        color: AppColors.kWhite,
        letterSpacing: 1.2.w,
      ),
      decoration: InputDecoration(
        fillColor: AppColors.kPrimary,
        filled: true,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Iconify(
            Eva.search_fill,
            size: 5,
            color: AppColors.kGrey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            25.w,
          ),
          borderSide: BorderSide(
            color: Colors.grey[700] as Color,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            25.w,
          ),
          borderSide: BorderSide(
            color: AppColors.kGrey.withOpacity(1),
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            25.w,
          ),
          borderSide: const BorderSide(
            width: 2.0,
          ),
        ),
        hintText: "Search call out challenge",
        hintStyle: TextStyle(
          height: 1,
          fontSize: 15.sp,
          color: AppColors.kGrey,
        ),
      ),
    );
  }
}
