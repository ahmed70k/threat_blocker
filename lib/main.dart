import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:threat_blocker/Providers/app_language/app_language_provider.dart';
import 'package:threat_blocker/Providers/app_theme/app_theme_provider.dart';
import 'package:threat_blocker/authantication/Register/Register_Screen.dart';
import 'package:threat_blocker/screens/home/home_screen.dart';
import 'package:threat_blocker/screens/notifications/notifications_screen.dart';
import 'package:threat_blocker/screens/splash/splash_screen.dart';
import 'package:threat_blocker/screens/submit_link/submit_link_screen.dart';
import 'authantication/Login/login_screen.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AppLanguageProvider()),
          ChangeNotifierProvider(create: (_) => AppThemeProvider()),
        ],
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appLanguageProvider = Provider.of<AppLanguageProvider>(context);
    var appThemeProvider = Provider.of<AppThemeProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      title: 'Phishing Link Analyzer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
     themeMode: appThemeProvider.changeTheme,
      initialRoute: SplashScreen.routeName,
      locale: Locale(appLanguageProvider.currentLanguage),
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        SubmitLinkScreen.routeName: (_) => SubmitLinkScreen(),
        NotificationsScreen.routeName: (_) => const NotificationsScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
      },
    );
  }
}
