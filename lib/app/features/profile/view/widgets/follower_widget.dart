import 'package:flutter/material.dart';
import 'package:wikolo_app/app/core/app_textstyles/app_textstyles.dart';

class FollowerWidget extends StatelessWidget {
  const FollowerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              "0",
              style: AppTextStyles.h4.copyWith(fontSize: 18),
            ),
            Text(
              "Following",
              style: AppTextStyles.h4.copyWith(fontSize: 18),
            )
          ],
        ),
        Column(
          children: [
            Text(
              "124.9K",
              style: AppTextStyles.h4.copyWith(fontSize: 18),
            ),
            Text(
              "Followers",
              style: AppTextStyles.h4.copyWith(fontSize: 18),
            )
          ],
        ),
        Column(
          children: [
            Text(
              "1.4M",
              style: AppTextStyles.h4.copyWith(fontSize: 18),
            ),
            Text(
              "Challenges",
              style: AppTextStyles.h4.copyWith(fontSize: 18),
            )
          ],
        )
      ],
    );
  }
}
