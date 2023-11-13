import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    margin: EdgeInsets.only(right: 5.w),
    height: 10.h,
    curve: Curves.easeIn,
    width: 10.w
  );
}

