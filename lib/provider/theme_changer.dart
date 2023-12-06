import 'package:flutter/material.dart';

class them_changer_provier with ChangeNotifier {
  var _theme_mode = ThemeMode.light;
  ThemeMode get thememode => _theme_mode;

  void setTheme(thememode) {
    _theme_mode = thememode;
    notifyListeners();
  }
}
