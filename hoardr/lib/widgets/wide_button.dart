import 'package:flutter/material.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:hoardr/utils/size_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WideButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final double fontSize;
  final bool isSmallScreen; // Flag for small screens

  WideButton({
    required this.onPressed,
    required this.buttonText,
    required this.fontSize,
    this.isSmallScreen = false, // Default to false
  });

  @override
  Widget build(BuildContext context) {

   
    
    return Container(
      width: 353.7.w,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText, style: TextStyle(letterSpacing: 1),),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
          padding: isSmallScreen
              ? EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h)
              : EdgeInsets.symmetric(horizontal: 30.w, vertical: 25.h),
          textStyle: TextStyle(fontSize: fontSize),
        ),
      ),
    );
  }
}


















