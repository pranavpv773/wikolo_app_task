import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/features/home/view/circle_avathar_set.dart';

import 'button_widget.dart';
import 'rich_text_widget.dart';
import 'stack_card.dart';

class CardBuilder extends StatelessWidget {
  const CardBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.h,
      color: AppColors.kGrey.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RichtextWidget(),
            const StackCards(),
            const CircleAvatharSet(),
            Divider(
              height: 15,
              color: AppColors.kSecondary,
            ),
            const Center(
              child: ButtonWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
