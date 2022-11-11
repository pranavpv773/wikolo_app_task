import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wikolo_app/app/features/profile/view/widgets/name_widget.dart';

import 'final_text_widget.dart';
import 'follow_btn_sec.dart';
import 'follower_widget.dart';
import 'gridview_builder.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: CircleAvatar(
              radius: 30.w,
              backgroundImage: NetworkImage(image),
            ),
          ),
          SizedBox(height: 10.w),
          NameWidget(name: name),
          SizedBox(
            height: 10.w,
          ),
          const FollowerWidget(),
          const FollowBtnSection(),
          SizedBox(height: 10.w),
          const FinalTextWidget(
            para: "We build digital products.",
          ),
          SizedBox(height: 10.w),
          const FinalTextWidget(
            para: "🔗 finorty.com",
          ),
          const GridviewBuilderWidget(),
        ],
      ),
    );
  }
}
