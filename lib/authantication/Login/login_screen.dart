import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import 'package:threat_blocker/screens/home/home_screen.dart';
import '../../Providers/app_language/app_language_provider.dart';
import '../../Providers/app_theme/app_theme_provider.dart';
import '../../widgets/test_text_form.dart';
import '../../widgets/theme_and_language_toggle.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<AppThemeProvider>(context);
    bool isDark = themeProvider.changeTheme == ThemeMode.dark;
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    bool isArabic = languageProvider.currentLanguage == 'ar';
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,

      /// Transparent AppBar with theme and language toggles
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Center(
            child: ThemeAndLanguageToggle(
              isToggled: isDark,
              onTap: () {
                themeProvider.changeThemeData(
                  isDark ? ThemeMode.light : ThemeMode.dark,
                );
              },
              iconSunny: Icon(
                Icons.wb_sunny_rounded,
                size: 16,
                color: theme.colorScheme.onPrimary,
              ),
              iconNightlight: Icon(
                Icons.nightlight_round,
                size: 16,
                color: isDark
                    ? theme.colorScheme.onPrimary
                    : theme.colorScheme.primary,
              ),
            ),

          ),
          const SizedBox(width: 12),
          Center(
            child: ThemeAndLanguageToggle(
              isToggled: isArabic,
              onTap: () {
                languageProvider.changeLanguage(isArabic ? 'en' : 'ar');
              },
              en: Text(
                'EN',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: isArabic
                      ? theme.colorScheme.primary
                      : theme.colorScheme.onPrimary,
                ),
              ),
              ar: Text(
                'AR',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: isArabic
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.primary,
                ),
              ),
            ),

          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            /// Constrain the width of the form for better readability on larger screens
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 450),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(
                        Icons.security_rounded,
                        size: 80,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        AppLocalizations.of(
                          context,
                        )!.phishing_link_analyzer.replaceAll('\n', ' '),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        AppLocalizations.of(context)!.signInToProceed,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.6,
                          ),
                        ),
                      ),
                      const SizedBox(height: 48),

                      /// Email field with validation
                      TestTextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icon(
                          Icons.email_rounded,
                          color: theme.colorScheme.primary,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(
                              context,
                            )!.pleaseEnterEmail;
                          }
                          return null;
                        },
                        hintText: AppLocalizations.of(context)!.email,
                      ),
                      const SizedBox(height: 20),

                      /// Password field with validation
                      TestTextFormField(
                        controller: passwordController,
                        isPassword: true,
                        prefixIcon: Icon(
                          Icons.lock_rounded,
                          color: theme.colorScheme.primary,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(
                              context,
                            )!.pleaseEnterPassword;
                          }
                          return null;
                        },
                        hintText: AppLocalizations.of(context)!.password,
                      ),
                      const SizedBox(height: 48),

                      /// Login button with validation check
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme.colorScheme.primary,
                          foregroundColor: theme.colorScheme.onPrimary,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 2,
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, HomeScreen.routeName);
                          }
                        },
                        child: Text(
                          AppLocalizations.of(context)!.login,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      /// Row prompting users to register if they don't have an account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.dontHaveAccount,
                            style: TextStyle(
                              color: theme.colorScheme.onSurface.withValues(
                                alpha: 0.7,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: theme.colorScheme.primary,
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(0, 0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.register_button,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
