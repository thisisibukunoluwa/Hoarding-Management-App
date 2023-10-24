import 'package:flutter/material.dart';
import 'package:dynamic_multi_step_form/dynamic_multi_step_form.dart';
import 'package:hoardr/data/registration_json.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  int currentPageIndex = 0;

  var _formKey = new GlobalKey<DynamicFormState>();

  @override
  Widget build(BuildContext context) {
  //   SizeConfig().init(context);
  //   double width = SizeConfig.screenW!;
  //   double height = SizeConfig.screenH!;

  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     body: SafeArea(
  //       child: Column(
  //         children: [
  //           Expanded(
  //             flex: 3,
  //             child: PageView.builder(
  //               physics: const NeverScrollableScrollPhysics(),
  //               controller: _controller,
  //               onPageChanged: (value) => setState(() => _currentPage = value),
  //               itemCount: contents.length,
  //               itemBuilder: (context, i) {
  //                 return Padding(
  //                   padding: const EdgeInsets.all(20.0),
  //                   child: Column(
  //                     children: [
  //                       Container(
  //                         child: Image.asset(
  //                           contents[i].image,
  //                           height: SizeConfig.blockV! * 35,
  //                           fit: BoxFit.fill,
  //                         ),
  //                       ),
  //                       SizedBox(
  //                         height: (height >= 840) ? 50 : 25,
  //                       ),
  //                       Row(children: [
  //                         Flexible(
  //                           flex: 6,
  //                           child: Text(
  //                             contents[i].title,
  //                             textAlign: TextAlign.left,
  //                             style: TextStyle(
  //                                 fontFamily: "Mulish",
  //                                 fontWeight: AppFontWeight.medium,
  //                                 fontSize: (width <= 550) ? 20 : 25,
  //                                 color: AppColors.textColor1,
  //                                 height: 1.7),
  //                           ),
  //                         ),
  //                         Flexible(flex: 1, child: Container())
  //                       ]),
  //                       const SizedBox(height: 20),
  //                       Text(
  //                         contents[i].desc,
  //                         style: TextStyle(
  //                             fontFamily: "Mulish",
  //                             fontWeight: AppFontWeight.regular,
  //                             fontSize: (width <= 550) ? 16 : 25,
  //                             color: AppColors.textColor2,
  //                             height: 2.0),
  //                         textAlign: TextAlign.left,
  //                       )
  //                     ],
  //                   ),
  //                 );
  //               },
  //             ),
  //           ),
  //           Expanded(
  //             flex: 1,
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Padding(
  //                   padding: EdgeInsets.only(left: 30, right: 30),
  //                   child: Container(
  //                     width: double.infinity,
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.start,
  //                       children: [
  //                         Row(
  //                           mainAxisAlignment: MainAxisAlignment.center,
  //                           children: List.generate(
  //                             contents.length,
  //                             (int index) => buildDots(
  //                                 index: index, currentPage: _currentPage),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //                 _currentPage + 1 == contents.length
  //                     ? Padding(
  //                         padding: const EdgeInsets.all(30),
  //                         child: Column(
  //                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                           children: [
  //                             WideButton(
  //                               onPressed: () {},
  //                               buttonText: "DECLUTTER YOUR SPACE TODAY",
  //                               isSmallScreen: (width <= 550),
  //                               fontSize: (width <= 550) ? 13 : 17,
  //                             ),
  //                             SizedBox(
  //                               height: 30,
  //                             ),
  //                             RichText(
  //                               text: TextSpan(
  //                                 text: "Already have an account? ",
  //                                 style: TextStyle(color: Colors.black),
  //                                 children: <TextSpan>[
  //                                   TextSpan(
  //                                       text: "Login",
  //                                       style: TextStyle(
  //                                         color: AppColors.primary,
  //                                       ),
  //                                       recognizer: TapGestureRecognizer()
  //                                         ..onTap = () {
  //                                           context.go('/login');
  //                                         }),
  //                                 ],
  //                               ),
  //                             )
  //                           ],
  //                         ))
  //                     : Padding(
  //                         padding: const EdgeInsets.all(30),
  //                         child: Column(
  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             WideButton(
  //                                 onPressed: () {
  //                                   _controller.nextPage(
  //                                     duration:
  //                                         const Duration(milliseconds: 200),
  //                                     curve: Curves.easeIn,
  //                                   );
  //                                 },
  //                                 buttonText: "NEXT",
  //                                 isSmallScreen: (width <= 550),
  //                                 fontSize: (width <= 550) ? 13 : 17),
  //                             Row(
  //                               mainAxisAlignment: MainAxisAlignment.center,
  //                               children: [
  //                                 TextButton(
  //                                   onPressed: () {
  //                                     _controller.jumpToPage(2);
  //                                   },
  //                                   child: const Text(
  //                                     "Skip",
  //                                     style: TextStyle(color: Colors.black),
  //                                   ),
  //                                   style: TextButton.styleFrom(
  //                                     elevation: 0,
  //                                     textStyle: TextStyle(
  //                                       fontWeight: AppFontWeight.regular,
  //                                       fontSize: (width <= 550) ? 13 : 17,
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 Icon(Icons.chevron_right)
  //                               ],
  //                             )
  //                           ],
  //                         ),
  //                       )
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
        return Column(
          children: [
            Expanded(
              // Add jsonString from example assets file or json encoded String.
                child: DynamicForm(, dynamicFormKey: _formKey,
                finalSubmitCallBack:
                        (int currentPage, Map<String, dynamic> data) async {
                  //Get all entered information on final or last form submit and redirect to another scree to display entered information
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondScreen(data: data)),
              );
            }, currentStepCallBack: ({int? currentIndex,
                        Map<String, dynamic>? formSubmitData,
                        Map<String, dynamic>? formInformation

                        }) {
                  //This function return value when any current form submit and validated.
              setState(() {
                //Here currentIndex is a current displayed step index. its default value is zero.
                currentPageIndex = currentIndex!; 
              });
            })),
            // Custom user buttons to move on next step or submit current form details
            Container(
              color: Colors.white,
              padding:
                  EdgeInsets.symmetric(horizontal: 15).copyWith(bottom: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: Colors.black,
                  maximumSize: Size(MediaQuery.of(context).size.width, 45),
                  minimumSize: Size(MediaQuery.of(context).size.width, 45),
                ),
                clipBehavior: Clip.hardEdge,
                onPressed: () async {
                  //Call next step function to validate form and move next step of form
                  _formKey.currentState!.nextStepCustomClick();
                },
                child: const Text('Next'),
              ),
            )
          ],
        );
  }
}
