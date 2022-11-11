import 'package:flutter/material.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/features/global/view/global_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kPrimary,
        primarySwatch: Colors.blue,
      ),
      home: const GlobalScreen(),
    );
  }
}
