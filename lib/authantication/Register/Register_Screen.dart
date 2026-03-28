import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import '../../screens/home/home_screen.dart';
import '../../widgets/test_text_form.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = "/register";
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            /// ConstrainedBox to limit the width of the form on larger screens
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 450),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 8.0,
                ),
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
                        AppLocalizations.of(context)!.createAnAccount,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.6,
                          ),
                        ),
                      ),
                      const SizedBox(height: 48),

                      /// Name field without controller since it's not used for validation or submission in this example
                      TestTextFormField(
                        prefixIcon: Icon(
                          Icons.person_rounded,
                          color: theme.colorScheme.primary,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(context)!.name_validator;
                          }
                          return null;
                        },
                        hintText: AppLocalizations.of(context)!.name_hint,
                      ),
                      const SizedBox(height: 20),

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
                            )!.email_validator;
                          }
                          return null;
                        },
                        hintText: AppLocalizations.of(context)!.email_hint,
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
                            )!.password_validator;
                          }
                          return null;
                        },
                        hintText: AppLocalizations.of(context)!.password_hint,
                      ),
                      const SizedBox(height: 20),

                      /// Confirm password field with validation
                      TestTextFormField(
                        isPassword: true,
                        prefixIcon: Icon(
                          Icons.lock_clock_rounded,
                          color: theme.colorScheme.primary,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(
                              context,
                            )!.confirm_password_validator;
                          }
                          return null;
                        },
                        hintText: AppLocalizations.of(
                          context,
                        )!.confirm_password_hint,
                      ),
                      const SizedBox(height: 48),

                      /// Register button with validation check
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
                          AppLocalizations.of(context)!.register,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
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
