import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hoardr/utils/size_config.dart';
import 'package:hoardr/widgets/custom_text_field.dart';
import 'package:hoardr/widgets/register_today.dart';
import 'package:hoardr/widgets/wide_button.dart';
import 'package:hoardr/theme/font_weight.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(
        top: 0.07 * height,
        bottom: 0.03 * height,
        left: 0.05 * width,
        right: 0.05 * width,
      ),
      child: SingleChildScrollView(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forgot password",
                    style: TextStyle(
                      fontWeight: AppFontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  Spacer(),
                  CustomTextField(
                    hintText: "ibukun@gmail.com",
                    label: "Email address",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  WideButton(onPressed: () {}, buttonText: "CONTINUE", fontSize: 13.sp,),
                  RegisterToday(parentContext: context)
                ],
              ),
      )
    ));
  }
}
