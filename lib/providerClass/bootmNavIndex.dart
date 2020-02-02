import 'package:flutter/material.dart';

class BottomNavIndex with ChangeNotifier {
  int _navIndex;

  BottomNavIndex(this._navIndex);

  getIndex() => _navIndex;
  setIndex(int index) => _navIndex = index;

  void changIndex(int index) {
   _navIndex = index;
    notifyListeners();
  }
}