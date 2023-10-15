import 'package:flutter/material.dart';
import 'package:hoardr/theme/colors.dart';

buildDots({int? index, int? currentPage}) {
  return AnimatedContainer(
    duration:  Duration(milliseconds: 200),
    decoration:  BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      color:  (currentPage == index ) ? AppColors.primary : AppColors.demiLightDark2
    ),
    margin: const EdgeInsets.only(right: 5),
    height: 10,
    curve: Curves.easeIn,
    width: 10 
  );
}

