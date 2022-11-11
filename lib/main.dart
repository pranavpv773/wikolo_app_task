import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/core/routes/routes.dart';
import 'package:wikolo_app/app/features/global/view/global_screen.dart';
import 'package:wikolo_app/app/features/global/view_model/global_notifier.dart';
import 'package:wikolo_app/app/features/home/view_model/home_notifier.dart';
import 'package:wikolo_app/app/features/profile/view_model/profile_notifier.dart';

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
        ),
        ChangeNotifierProvider(
          create: (create) => HomeNotifier(),
        ),
        ChangeNotifierProvider(
          create: (create) => ProfileNotifier(),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return MaterialApp(
            navigatorKey: Routes.navigatorKey,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.kPrimary,
              primarySwatch: Colors.brown,
            ),
            home: const GlobalScreen(),
          );
        },
      ),
    );
  }
}
