import 'package:flutter/material.dart';

class BottomNavProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners(); // Notify listeners to rebuild widgets
  }
}
