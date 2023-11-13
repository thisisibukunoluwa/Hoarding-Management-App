import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:hoardr/theme/font_weight.dart';
import 'package:hoardr/widgets/dot_indicator.dart';
import 'package:hoardr/utils/size_config.dart';
import 'package:hoardr/screens/onboarding/onboarding_content.dart';
import 'package:hoardr/widgets/wide_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // PageView(

            // )
            Text(width.toString()),
            Text(height.toString()),
            Expanded(
              flex: 3,
              child: PageView(
                physics: const ClampingScrollPhysics(),
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                children: [
                  for (int i = 0; i < contents.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              contents[i].image,
                              height: SizeConfig.blockV! * 35,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: (height >= 840) ? 50 : 25,
                          ),
                          Row(children: [
                            Flexible(
                              flex: 6,
                              child: Text(
                                contents[i].title,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: "Mulish",
                                    fontWeight: AppFontWeight.medium,
                                    fontSize: (width <= 550) ? 20 : 25,
                                    color: AppColors.textColor1,
                                    height: 1.7),
                              ),
                            ),
                            Flexible(flex: 1, child: Container())
                          ]),
                          SizedBox(height: 20.h),
                          Expanded(
                            child: Text(
                              contents[i].desc,
                              style: TextStyle(
                                  fontFamily: "Mulish",
                                  fontWeight: AppFontWeight.regular,
                                  fontSize: (width <= 550) ? 16 : 25,
                                  color: AppColors.textColor2,
                                  height: 2.0),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                    )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 337.5.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                            (int index) => buildDots(
                                index: index, currentPage: _currentPage),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _currentPage + 1 == contents.length
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 30.h, horizontal: 0.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              WideButton(
                                onPressed: () {},
                                buttonText: "DECLUTTER YOUR SPACE TODAY",
                                isSmallScreen: (width <= 550),
                                fontSize: (width <= 550) ? 13 : 17,
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "Already have an account? ",
                                  style: TextStyle(color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Login",
                                        style: TextStyle(
                                          color: AppColors.primary,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            context.go('/login');
                                          }),
                                  ],
                                ),
                              )
                            ],
                          ))
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              WideButton(
                                  onPressed: () {
                                    _controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      curve: Curves.easeIn,
                                    );
                                  },
                                  buttonText: "NEXT",
                                  isSmallScreen: (width <= 550),
                                  fontSize: (width <= 550) ? 13 : 17),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      _controller.jumpToPage(2);
                                    },
                                    child: const Text(
                                      "Skip",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: TextButton.styleFrom(
                                      elevation: 0,
                                      textStyle: TextStyle(
                                        fontWeight: AppFontWeight.regular,
                                        fontSize: (width <= 550) ? 13 : 17,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.chevron_right)
                                ],
                              )
                            ],
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
