import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:threat_blocker/Providers/app_language/app_language_provider.dart';
import 'package:threat_blocker/Providers/app_theme/app_theme_provider.dart';
import 'package:threat_blocker/authantication/Register/Register_Screen.dart';
import 'package:threat_blocker/screens/home/home_screen.dart';
import 'package:threat_blocker/screens/splash/splash_screen.dart';
import 'package:threat_blocker/screens/submit_link/submit_link_screen.dart';
import 'package:threat_blocker/screens/profile/user_profile_screen.dart';
import 'package:threat_blocker/screens/activity/recent_activity_screen.dart';
import 'package:threat_blocker/screens/result/server_location_screen.dart';
import 'package:threat_blocker/screens/safety_tips/safety_tips_screen.dart';
import 'package:threat_blocker/theme/dark_theme.dart';
import 'package:threat_blocker/theme/light_theme.dart';
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

      onGenerateTitle: (context) => AppLocalizations.of(context)!.phishingAnalyzer,
      debugShowCheckedModeBanner: false,
      theme:LightTheme.lightTheme,
      darkTheme: DarkTheme.darkTheme,
      themeMode: appThemeProvider.changeTheme,
      initialRoute: SplashScreen.routeName,
      locale: Locale(appLanguageProvider.currentLanguage),
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        SubmitLinkScreen.routeName: (_) => SubmitLinkScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        UserProfileScreen.routeName: (context) => const UserProfileScreen(),
        SafetyTipsScreen.routeName: (context) => const SafetyTipsScreen(),
        RecentActivityScreen.routeName: (context) => const RecentActivityScreen(),
        ServerLocationScreen.routeName: (context) => const ServerLocationScreen(),
      },
    );
  }
}
