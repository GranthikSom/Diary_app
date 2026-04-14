// ignore_for_file: strict_top_level_inference

import 'package:dairyhelper/themes/dark_mode.dart' show darkmode;
import 'package:dairyhelper/themes/light_mode.dart' show lightmode;
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightmode;

  ThemeData? themeData;

  get themeDate => _themeData;

  bool get isDarkMode => _themeData == darkmode;

  set themedata(ThemeData themedata) {
    _themeData = themedata;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightmode) {
      _themeData = darkmode;
    } else {
      _themeData = lightmode;
    }
    notifyListeners();
  }
}
