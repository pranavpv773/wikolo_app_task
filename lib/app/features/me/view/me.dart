import 'package:flutter/material.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';

class MeScreen extends StatelessWidget {
  const MeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Me",
          style: TextStyle(
            color: AppColors.kWhite,
          ),
        ),
      ),
    );
  }
}
