import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/core/app_textstyles/app_textstyles.dart';
import 'package:wikolo_app/app/core/routes/routes.dart';

import 'widgets/gridview_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key, required this.image, required this.name})
      : super(key: key);
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kPrimary,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Routes.backScreen();
          },
          child: Row(
            children: const [
              Icon(Icons.arrow_back_ios_new),
              Text("Back"),
            ],
          ),
        ),
        centerTitle: true,
        title: Text(name),
        actions: [
          Icon(
            Icons.more_horiz_outlined,
            size: 30.w,
          )
        ],
      ),
      body: SingleChildScrollView(
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
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "@$name",
                    style: AppTextStyles.h2,
                  ),
                  const Visibility(
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            Row(
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
            ),
            SizedBox(height: 10.w),
            Text(
              "We build digital products.",
              style: AppTextStyles.h3,
            ),
            SizedBox(height: 10.w),
            Text(
              "🔗 finorty.com",
              style: AppTextStyles.h3,
            ),
            const GridviewBuilderWidget(),
          ],
        ),
      ),
    );
  }
}
