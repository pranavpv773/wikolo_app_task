import 'package:flutter/material.dart';

import '../../../core/app_colors/app_colors.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Inbox",
          style: TextStyle(
            color: AppColors.kWhite,
          ),
        ),
      ),
    );
  }
}
