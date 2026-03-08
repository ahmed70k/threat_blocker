import 'package:flutter/material.dart';
import 'package:threat_blocker/authantication/Register/Register_Screen.dart';
import 'package:threat_blocker/screens/home/home_screen.dart';
import 'package:threat_blocker/screens/notifications/notifications_screen.dart';
import 'package:threat_blocker/screens/splash/splash_screen.dart';
import 'package:threat_blocker/screens/submit_link/submit_link_screen.dart';
import 'package:threat_blocker/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phishing Link Analyzer',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
     initialRoute: HomeScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        SubmitLinkScreen.routeName:(_)=>SubmitLinkScreen(),
        NotificationsScreen.routeName:(_)=>const NotificationsScreen(),
        HomeScreen.routeName:(context)=> HomeScreen(),
        RegisterScreen.routeName :(context)=> const RegisterScreen(),

      },
    );
  }
}


