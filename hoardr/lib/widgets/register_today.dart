import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:hoardr/theme/font_weight.dart';

class RegisterToday extends StatelessWidget {
  final BuildContext parentContext; 
  const RegisterToday({super.key, required this.parentContext});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Don't have an account? ",
        style: const TextStyle(color: Colors.black),
        children: <TextSpan>[
          TextSpan(
              text: "Register Today",
              style: const TextStyle(
                  color: AppColors.actionBlue, fontWeight: AppFontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  parentContext.go('/register');
                }),
        ],
      ),
    );
  }
}
