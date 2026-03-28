import 'package:flutter/cupertino.dart';

class AppLanguageProvider extends ChangeNotifier {
  String currentLanguage = 'ar';

  void changeLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }
}
