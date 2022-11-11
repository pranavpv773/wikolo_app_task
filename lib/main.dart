import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/features/global/view/global_screen.dart';
import 'package:wikolo_app/app/features/global/view_model/global_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (create) => GlobalNotifier(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.kPrimary,
          primarySwatch: Colors.brown,
        ),
        home: const GlobalScreen(),
      ),
    );
  }
}
