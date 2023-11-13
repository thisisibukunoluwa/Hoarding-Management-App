// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hoardr/models/product_model.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:hoardr/theme/font_weight.dart';
import 'package:hoardr/utils/size_config.dart';
import 'package:hoardr/widgets/custom_text_field.dart';
import 'package:hoardr/widgets/page_scaffold.dart';
import 'package:hoardr/widgets/wide_button.dart';

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
    void toNextPage() {
      _controller.nextPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    }

    return PageScaffold(
      title: "Add Item",
      child: PageView(
        physics: const ClampingScrollPhysics(),
        controller: _controller,
        onPageChanged: (value) => setState(() => _currentPage = value),
        children: [
          _AddItemPage1(
            onPressed: toNextPage,
          ),
          const _AddItemPage2()
        ],
      ),
    );
  }
}

class _AddItemPage1 extends StatefulWidget {
  final VoidCallback onPressed;

  const _AddItemPage1({super.key, required this.onPressed});

  @override
  State<_AddItemPage1> createState() => __AddItemPage1State();
}

class __AddItemPage1State extends State<_AddItemPage1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  late SingleValueDropDownController _cnt;

  @override
  void initState() {
    _cnt = SingleValueDropDownController();
    super.initState();
  }

  @override
  void dispose() {
    _cnt.dispose();
    super.dispose();
  }

@override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: 19.7.w, vertical: 1.7.h),
        child: Form(
          key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
                height:20.h,
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: [
                const TextSpan(
                    text: 'Make your items visible. 1 / ',
                    style: TextStyle(
                      fontWeight: AppFontWeight.bold,
                      color: AppColors.textColor1
                    ),
                  ),
                  const TextSpan(
                    text: '2',
                    style: TextStyle(
                      fontWeight: AppFontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(
                height: 35.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Category*",
                ),
                SizedBox(
                  height: 10.h,
                ),
                DropDownTextField( 
                    controller: _cnt,
                    clearOption: true,
                    searchDecoration: const InputDecoration(
                        hintText: "choose the category of the item you want to add"),
                    validator: (value) {
                      if (value == null) {
                        return "This field is required";
                      } else {
                        return null;
                      }
                    },
                    dropDownItemCount: 6,
                    dropDownList: const [
                      DropDownValueModel(name: 'name1', value: "value1"),
                      DropDownValueModel(
                          name: 'name2',
                          value: "value2",
                          toolTipMsg:
                              "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                      DropDownValueModel(name: 'name3', value: "value3"),
                      DropDownValueModel(
                          name: 'name4',
                          value: "value4",
                          toolTipMsg:
                              "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                      DropDownValueModel(name: 'name5', value: "value5"),
                      DropDownValueModel(name: 'name6', value: "value6"),
                      DropDownValueModel(name: 'name7', value: "value7"),
                      DropDownValueModel(name: 'name8', value: "value8"),
                    ],
                    onChanged: (val) {},
                  ),
              ],
            ),
            SizedBox(
              height:30.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Location*"),
                  SizedBox(
                    height: 10.h,
                  ),
                  DropDownTextField(
                    controller: _cnt,
                    clearOption: true,
                    searchDecoration: const InputDecoration(
                        hintText:
                            "choose the category of the item you want to add"),
                    validator: (value) {
                      if (value == null) {
                        return "This field is required";
                      } else {
                        return null;
                      }
                    },
                    dropDownItemCount: 6,
                    dropDownList: const [
                      DropDownValueModel(name: 'name1', value: "value1"),
                      DropDownValueModel(
                          name: 'name2',
                          value: "value2",
                          toolTipMsg:
                              "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                      DropDownValueModel(name: 'name3', value: "value3"),
                      DropDownValueModel(
                          name: 'name4',
                          value: "value4",
                          toolTipMsg:
                              "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                      DropDownValueModel(name: 'name5', value: "value5"),
                      DropDownValueModel(name: 'name6', value: "value6"),
                      DropDownValueModel(name: 'name7', value: "value7"),
                      DropDownValueModel(name: 'name8', value: "value8"),
                    ],
                    onChanged: (val) {},
                  ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  label: "Title*",
                )
              ],
            ),
               SizedBox(
                height: 30.h,
              ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description*"),
                     SizedBox(
                    height: 10.h,
                  ),
                Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: SizedBox(
                      width: 353.7.w,
                      height:150,
                      child: TextFormField(
                        maxLines: 6,
                        maxLength: 200, 
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          hintText: 'Describe Item',
                           floatingLabelBehavior:FloatingLabelBehavior.never,
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ))
              ],
            ),
            WideButton(
                onPressed: widget.onPressed,
                buttonText: "CONTINUE",
                fontSize: 13.sp,
                isSmallScreen: false,
            ),
          ],
        ),
        ),
      ),
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
      final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Padding(
         padding:EdgeInsets.symmetric(
          horizontal: 19.7.w, vertical: 1.7.h,
        ),
        child: Form(
          key: _formKey,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               SizedBox(
                height: 20.h,
              ),
                 RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    const TextSpan(
                      text: 'Make your items visible. 2 / ',
                      style: TextStyle(
                          fontWeight: AppFontWeight.bold,
                          color: AppColors.textColor1),
                    ),
                    const TextSpan(
                      text: '2',
                      style: TextStyle(
                        fontWeight: AppFontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Column(
                children: [
                  Column(
                     children: [
                        Text(
                          "Enter Personal Details",
                          style: Theme.of(context).textTheme.bodyLarge,
                        )
                     ],
                  ),
                  WideButton(
                    onPressed: (){}, 
                    buttonText: "PREVIEW ITEM",
                     fontSize: 13.sp 
                    )
                ],
              )
          ])
        ),
      ),
    );
  }
}
