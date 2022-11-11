import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/features/profile/view_model/profile_notifier.dart';

class GridviewBuilderWidget extends StatelessWidget {
  const GridviewBuilderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 160,
        mainAxisExtent: 160,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: context.read<ProfileNotifier>().iamges.length,
      itemBuilder: (BuildContext ctx, index) {
        final data = context.read<ProfileNotifier>().iamges;
        return Material(
          elevation: 10,
          shadowColor: Colors.black,
          child: Container(
            color: AppColors.kWhite,
            child: Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    data[index],
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
