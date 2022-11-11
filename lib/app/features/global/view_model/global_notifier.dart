import 'package:flutter/widgets.dart';
import 'package:wikolo_app/app/features/discover/view/discover.dart';
import 'package:wikolo_app/app/features/home/view/home.dart';
import 'package:wikolo_app/app/features/inbox/view/inbox.dart';
import 'package:wikolo_app/app/features/me/view/me.dart';
import 'package:wikolo_app/app/features/shorts/view/shorts.dart';

class GlobalNotifier with ChangeNotifier {
  int selectIndex = 0;
  List pages = [
    const HomeScreen(),
    const DiscoverScreen(),
    const ShortsScreen(),
    const InboxScreen(),
    const MeScreen(),
  ];
  onIndexChange(int value) {
    selectIndex = value;
    notifyListeners();
  }
}
