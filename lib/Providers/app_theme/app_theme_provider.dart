import 'package:flutter/material.dart';

class AppThemeProvider  extends ChangeNotifier{
  ThemeMode changeTheme = ThemeMode.light; // variable from type ThemeMode to hold the current theme

  void changeThemeData(ThemeMode newTheme){
    if( changeTheme == newTheme) {
      return;
    }
    changeTheme = newTheme;
    notifyListeners();

  }
}

