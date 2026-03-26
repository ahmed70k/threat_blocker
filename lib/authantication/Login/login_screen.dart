import 'package:flutter/material.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import 'package:threat_blocker/screens/home/home_screen.dart';
import 'package:threat_blocker/theme/app_colors.dart';

import '../../widgets/test_text_form.dart';

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
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.2,
                    ),
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
                     SizedBox(height:height * 0.1),
                    TestTextFormField(
                      // controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppLocalizations.of(context)!
                              .pleaseEnterEmail;
                        }
                        return null;
                      },
                      hintText: AppLocalizations.of(context)!.email,
                    ),

                    const SizedBox(height: 18),

                    TestTextFormField(
                      // controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppLocalizations.of(context)!
                              .pleaseEnterPassword;
                        }
                        return null;
                      },
                      hintText: AppLocalizations.of(context)!.password,
                    ),

                     SizedBox(height: height *0.06),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamed(
                              context, HomeScreen.routeName);
                        }
                      },
                      child: Text(AppLocalizations.of(context)!.login),
                    ),

                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        AppLocalizations.of(context)!.noAccountRegister,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}