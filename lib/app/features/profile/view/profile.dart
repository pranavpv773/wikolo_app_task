import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/core/routes/routes.dart';

import 'widgets/body.dart';

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
      body: ProfileBody(image: image, name: name),
    );
  }
}
