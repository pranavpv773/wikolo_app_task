import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/core/app_textstyles/app_textstyles.dart';

import 'widgets/sliver_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBarWidget(),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Challenges",
                style: AppTextStyles.h2,
              ),
              Container(
                width: 80.w,
                height: 120.h,
                color: AppColors.kSecondary,
                child: Column(
                  children: const [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
