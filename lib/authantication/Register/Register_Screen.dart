import 'package:flutter/material.dart';

import '../../screens/home/home_screen.dart';
import '../../widgets/test_text_form.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "/register";
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 22),
            TestTextFormField(
              // controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter Name";
                }
                return null;
              },
              hintText: "Name",
            ),

            const SizedBox(height: 22),
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
            const SizedBox(height: 22),

            TestTextFormField(
              // controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter Password";
                }
                return null;
              },
              hintText: "Password",
            ),
            const SizedBox(height: 22,),
            TestTextFormField(
              // controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter confirm Password";
                }
                return null;
              },
              hintText: " Confirm Password",
            ),
            const SizedBox(height: 22,),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              child: const Text("register",style: TextStyle(fontSize: 22),),
            ),

          ],
        ),
      ),
    );
  }
}
