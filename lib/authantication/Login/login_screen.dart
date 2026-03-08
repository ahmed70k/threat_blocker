import 'package:flutter/material.dart';
import 'package:threat_blocker/screens/home/home_screen.dart';
import 'package:threat_blocker/theme/app_colors.dart';

import '../../widgets/test_text_form.dart';

class LoginScreen extends StatefulWidget {
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
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 200),
              TestTextFormField(
                // controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter email";
                  }
                  return null;
                },
                hintText: "Email",
              ),
              const SizedBox(height: 18),
              TestTextFormField(
                // controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter Password";
                  }
                  return null;
                },
                hintText: "password",
              ),
              const SizedBox(height: 32),

              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  }
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
