import 'package:flutter/material.dart';

class StateProvider extends ChangeNotifier {
  int count = 0;
  int get getCount => count;
  inreamentCount() {
    count++;
    notifyListeners();
  }
}
