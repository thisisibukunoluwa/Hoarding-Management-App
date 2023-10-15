import 'package:flutter/material.dart';
import 'package:hoardr/theme/colors.dart';

class WideButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final double fontSize;
  final bool isSmallScreen; // Flag for small screens

  WideButton({
    required this.onPressed,
    required this.buttonText,
    this.fontSize = 13, // Default font size
    this.isSmallScreen = false, // Default to false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
          padding: isSmallScreen
              ? EdgeInsets.symmetric(horizontal: 30, vertical: 20)
              : EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          textStyle: TextStyle(fontSize: fontSize),
        ),
      ),
    );
  }
}




















//  Container(
//                                 width: double.infinity,
//                                 child: ElevatedButton(
//                                   onPressed: () {
//                                    
//                                   },
//                                   child: const Text("NEXT"),
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: AppColors.primary,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(8),
//                                     ),
//                                     elevation: 0,
//                                     padding: (width <= 550)
//                                         ? const EdgeInsets.symmetric(
//                                             horizontal: 30, vertical: 20)
//                                         : const EdgeInsets.symmetric(
//                                             horizontal: 30, vertical: 25),
//                                     textStyle: TextStyle(
//                                         fontSize: (width <= 550) ? 13 : 17),
//                                   ),
//                                 ),
//                               ),