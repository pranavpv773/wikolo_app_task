import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';

class FollowBtnSection extends StatelessWidget {
  const FollowBtnSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColors.kSecondary,
            ),
          ),
          onPressed: () {},
          child: const Text("Follow"),
        ),
        SizedBox(
          width: 5.w,
        ),
        Container(
          width: 30.w,
          height: 30.w,
          decoration: BoxDecoration(
              border: Border.all(width: 2.w, color: AppColors.kGrey)),
          child: Center(
            child: Icon(
              Icons.arrow_drop_down,
              color: AppColors.kWhite,
            ),
          ),
        ),
        const SizedBox()
      ],
    );
  }
}
