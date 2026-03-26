import 'package:flutter/material.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import 'package:threat_blocker/theme/app_colors.dart';

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
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
                  key: formKey,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 48),

                        Icon(
                          Icons.security_rounded,
                          size: 64,
                          color: Theme.of(context).colorScheme.primary,
                        ),

                        const Text(
                          "Phishing Link Analyzer",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 120),

                        TestTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!
                                  .name_validator;
                            }
                            return null;
                          },
                          hintText:
                          AppLocalizations.of(context)!.name_hint,
                        ),

                        const SizedBox(height: 22),

                        TestTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!
                                  .email_validator;
                            }
                            return null;
                          },
                          hintText:
                          AppLocalizations.of(context)!.email_hint,
                        ),

                        const SizedBox(height: 22),

                        TestTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!
                                  .password_validator;
                            }
                            return null;
                          },
                          hintText:
                          AppLocalizations.of(context)!.password_hint,
                        ),

                        const SizedBox(height: 22),

                        TestTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!
                                  .confirm_password_validator;
                            }
                            return null;
                          },
                          hintText: AppLocalizations.of(context)!
                              .confirm_password_hint,
                        ),

                        const SizedBox(height: 22),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushNamed(
                                    context, HomeScreen.routeName);
                              }
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.deepPurple,
                              ),
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
          );
        },
      ),
    );
  }
}