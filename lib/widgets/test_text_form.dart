import 'package:flutter/material.dart';
import 'package:threat_blocker/theme/app_colors.dart';

class TestTextFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextStyle? hintStyle;
  final String? hintText;
  Widget? prefixIcon;
   TestTextFormField({
    this.prefixIcon,
    super.key,
    required this.validator,
    this.hintStyle,
    this.hintText,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
         prefixIcon: prefixIcon,
        // prefixIconColor: ,
       // labelText
       //  errorStyle: ,
        hintStyle: hintStyle,
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.blueAction),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.error),
        ),
      ),
    );
  }
}