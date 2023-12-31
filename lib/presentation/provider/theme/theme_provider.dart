import 'package:flutter/material.dart';
import 'package:portafoleo/config/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = dartMode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleMode() {
    (_themeData == lighMode) ? themeData = dartMode : themeData = lighMode;
  }
}
