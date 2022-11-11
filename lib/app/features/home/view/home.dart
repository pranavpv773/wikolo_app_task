import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/core/app_textstyles/app_textstyles.dart';
import 'package:wikolo_app/app/features/home/view/widgets/challenge_builder.dart';

import 'widgets/pushup_short_builder.dart';
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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "New Challenges",
                  style: AppTextStyles.h2,
                ),
                const ChallengeBuilderWidget(),
                const HeadingDropWidget(),
                const CardBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeadingDropWidget extends StatelessWidget {
  const HeadingDropWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Who did it best?",
            style: AppTextStyles.h1,
          ),
          Container(
            width: 100.w,
            height: 25.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.kWhite,
            ),
            child: DropdownButton<String>(
              hint: const Padding(
                padding: EdgeInsets.only(left: 2.0),
                child: Text("Completed"),
              ),
              alignment: AlignmentDirectional.center,
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  Iconify(
                    Bx.down_arrow,
                    size: 12.w,
                  ),
                ],
              ),
              items: <String>[
                'Public',
                'Private',
                'Completed',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          )
        ],
      ),
    );
  }
}
