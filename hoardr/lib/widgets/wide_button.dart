import 'package:flutter/material.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:hoardr/utils/size_config.dart';

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
     SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    
    return Container(
      width: width * 0.90,
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