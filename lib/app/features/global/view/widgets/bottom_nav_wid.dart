import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/ei.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:provider/provider.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/features/global/view_model/global_notifier.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 10,
      items: [
        BottomNavigationBarItem(
          icon: Iconify(
            Bx.home_alt,
            color: context.watch<GlobalNotifier>().selectIndex == 0
                ? AppColors.kWhite
                : AppColors.kGrey,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Iconify(
            Eva.search_fill,
            color: context.watch<GlobalNotifier>().selectIndex == 1
                ? AppColors.kWhite
                : AppColors.kGrey,
          ),
          label: "Display",
        ),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: AppColors.kSecondary,
              radius: 25,
              child: Center(
                child: Image.asset(
                  "assets/icons/thunder.png",
                  width: 20,
                ),
              ),
            ),
            label: ""),
        BottomNavigationBarItem(
          icon: Iconify(
            Ic.outline_textsms,
            color: context.watch<GlobalNotifier>().selectIndex == 3
                ? AppColors.kWhite
                : AppColors.kGrey,
          ),
          label: "Inbox",
        ),
        BottomNavigationBarItem(
          icon: Iconify(
            Ei.trophy,
            size: 30,
            color: context.watch<GlobalNotifier>().selectIndex == 4
                ? AppColors.kWhite
                : AppColors.kGrey,
          ),
          label: "Me",
        ),
      ],
      currentIndex: context.watch<GlobalNotifier>().selectIndex,
      backgroundColor: AppColors.kPrimary,
      //  selectedItemColor: AppColors.kSecondary,
      selectedIconTheme: IconThemeData(color: AppColors.kWhite),
      unselectedIconTheme: IconThemeData(color: AppColors.kGrey, size: 30),
      unselectedItemColor: AppColors.kGrey,
      selectedLabelStyle: const TextStyle(fontSize: 14),
      showUnselectedLabels: true,
      fixedColor: AppColors.kWhite,
      onTap: (value) {
        context.read<GlobalNotifier>().onIndexChange(value);
      },
    );
  }
}
