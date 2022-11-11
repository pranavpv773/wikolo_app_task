import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/core/app_textstyles/app_textstyles.dart';
import 'package:wikolo_app/app/features/utils/util_map.dart';

class ShortsCard extends StatelessWidget {
  const ShortsCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 200.h,
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150.w,
            height: 155.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(users[index]['bg_img'].toString()),
                  fit: BoxFit.cover),
              color: AppColors.kWhite,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      size: 40.w,
                      color: AppColors.kSecondary,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(users[index]['profile'].toString()),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        users[index]['name'].toString(),
                        style: AppTextStyles.h4.copyWith(fontSize: 10),
                      ),
                      Text(
                        "data",
                        style: AppTextStyles.h4.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.play_arrow),
              const Text("Play"),
              Transform.scale(
                scale: 0.7,
                child: Checkbox(
                  checkColor: AppColors.kWhite,
                  fillColor: MaterialStateProperty.all(Colors.pink),
                  value: false,
                  onChanged: (_) {},
                ),
              ),
              const Text("Vote 10.2K")
            ],
          )
        ],
      ),
    );
  }
}
