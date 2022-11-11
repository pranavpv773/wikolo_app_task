import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wikolo_app/app/core/app_textstyles/app_textstyles.dart';
import 'package:wikolo_app/app/features/utils/util_map.dart';

class CircleAvatharSet extends StatelessWidget {
  const CircleAvatharSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 18.w,
          backgroundImage: NetworkImage(users[0]['profile'].toString()),
        ),
        CircleAvatar(
          radius: 18.w,
          backgroundImage: NetworkImage(
            users[1]['profile'].toString(),
          ),
        ),
        CircleAvatar(
          radius: 18.w,
          backgroundImage: NetworkImage(
            users[2]['profile'].toString(),
          ),
        ),
        CircleAvatar(
          radius: 18.w,
          backgroundImage: NetworkImage(
            users[4]['profile'].toString(),
          ),
        ),
        Text(
          '21.3K challenges to the videos',
          style: AppTextStyles.h2.copyWith(fontSize: 12),
        )
      ],
    );
  }
}
