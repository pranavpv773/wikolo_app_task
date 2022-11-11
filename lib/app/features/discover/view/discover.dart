import 'package:flutter/material.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Discover",
          style: TextStyle(
            color: AppColors.kWhite,
          ),
        ),
      ),
    );
  }
}
