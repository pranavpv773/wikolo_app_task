import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/core/app_textstyles/app_textstyles.dart';
import 'package:wikolo_app/app/features/utils/util_map.dart';

class ChallengeBuilderWidget extends StatelessWidget {
  const ChallengeBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: SizedBox(
        height: 120.w,
        child: ListView(
          physics: const ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: List.generate(
            users.length,
            (index) => Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15.w, left: 5.w),
                  child: SizedBox(
                    width: 50.w,
                    height: 70.h,
                    // color: AppColors.kSecondary,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 15.h,
                          left: 0,
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 25.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  users[index]['bg_img'].toString(),
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(30.w),
                              color: AppColors.kWhite,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundImage: NetworkImage(
                                users[index]['profile'].toString()),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.w,
                ),
                FittedBox(
                  child: Text(
                    users[index]['name'].toString(),
                    style: AppTextStyles.h4
                        .copyWith(fontSize: 12, color: AppColors.kGrey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
