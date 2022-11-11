import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wikolo_app/app/features/global/view_model/global_notifier.dart';
import 'widgets/bottom_nav_wid.dart';

class GlobalScreen extends StatelessWidget {
  const GlobalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: context
          .watch<GlobalNotifier>()
          .pages[context.read<GlobalNotifier>().selectIndex],
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
