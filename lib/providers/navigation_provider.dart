import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  bool _isWelcomeCompleted = false;

  bool get isWelcomeCompleted => _isWelcomeCompleted;

  void completeWelcome() {
    _isWelcomeCompleted = true;
    notifyListeners(); // Notify the app to rebuild the UI
  }
}
