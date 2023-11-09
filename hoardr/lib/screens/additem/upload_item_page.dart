import 'package:flutter/material.dart';
import 'package:hoardr/utils/size_config.dart';

class UploadItemPage extends StatefulWidget {
  const UploadItemPage({super.key});

  @override
  State<UploadItemPage> createState() => _UploadItemPageState();
}

class _UploadItemPageState extends State<UploadItemPage> {
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
            Expanded(
              flex: 3,
              child: PageView(
                physics: const ClampingScrollPhysics(),
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                children: [],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * 0.90,
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
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 0),
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
                                height: 30,
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

class _AddItemPage1 extends StatefulWidget {
  const _AddItemPage1({super.key});

  @override
  State<_AddItemPage1> createState() => __AddItemPage1State();
}

class __AddItemPage1State extends State<_AddItemPage1> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        
      ],
    );
  }
}

class _AddItemPage2 extends StatefulWidget {
  const _AddItemPage2({super.key});

  @override
  State<_AddItemPage2> createState() => __AddItemPage2State();
}

class __AddItemPage2State extends State<_AddItemPage2> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
