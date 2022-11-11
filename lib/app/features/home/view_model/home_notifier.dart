import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeNotifier with ChangeNotifier {
  bool checked = false;
  String? drop;
  final searchCntrl = TextEditingController();
  bool checkBox() {
    if (checked == true) {
      checked = false;
      notifyListeners();
    } else {
      checked = true;
      notifyListeners();
    }
    notifyListeners();
    return checked;
  }

  void selectDrop(String value) {
    drop = value;
    notifyListeners();
  }
}
