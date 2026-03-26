import 'package:flutter/material.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import '../../authantication/Login/login_screen.dart';
import '../../theme/app_text_styles.dart';
class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToLoginScreen();
  }

  Future<void> navigateToLoginScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Icon(
                Icons.security_rounded,
                size: 64,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              AppLocalizations.of(context)!.phishing_link_analyzer,
              textAlign: TextAlign.center,
              style: AppTextStyles.h1.copyWith(
                color: Colors.white,
                fontSize: 32,
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
                AppLocalizations.of(context)!.stay_safe_digital_world,
              style: AppTextStyles.bodyLarge16.copyWith(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}

