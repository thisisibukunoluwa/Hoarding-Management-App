// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 19.7.w, vertical: 1.7.h),
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
                      text: 'Make your items visible. 1 / ',
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
                  const Text("Description*"),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        width: 353.7.w,
                        height: 150,
                        child: TextFormField(
                          maxLines: 6,
                          maxLength: 200,
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                            hintText: 'Describe Item',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
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
  bool? _isChecked1 = false;
  bool? _isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 19.7.w,
          vertical: 1.7.h,
        ),
        child: Form(
            key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 20.h,
              ),
              const PageHeader(),
              SizedBox(
                height: 35.h,
              ),
              const AddImage(),
              SizedBox(height: 30.h),
              const ListItemChoice(),
              SizedBox(height: 30.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    label: "Price*",
                    hintText: "Enter Price",
                  )
                ],
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 60.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter Personal details",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Checkbox(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: _isChecked1,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isChecked1 = value;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        const Text("Keep me anonymous"),
                        SizedBox(
                          width: 12.w,
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Checkbox(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: _isChecked2,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isChecked2 = value;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        const Text("Use name"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              WideButton(
                  onPressed: () {
                    context.go('/preview');
                  },
                  buttonText: "PREVIEW ITEM",
                  fontSize: 13.sp)
            ])),
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          const TextSpan(
            text: 'Make your items visible. 2 / ',
            style: TextStyle(
                fontWeight: AppFontWeight.bold, color: AppColors.textColor1),
          ),
          const TextSpan(
            text: '2',
            style: TextStyle(
              fontWeight: AppFontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class AddImage extends StatelessWidget {
  const AddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Add Image*",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            "Add at least one Image, but not more than 5 images",
            style: TextStyle(
                fontSize: 13.5.sp,
                fontWeight: AppFontWeight.regular,
                color: AppColors.textColor2),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {
                print('Button clicked');
              },
              child: Container(
                width: 65.w,
                height: 65.h,
                decoration: const BoxDecoration(
                  color: AppColors.goldYellow,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.add, // This is the cross icon
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
            ),
            ...List.generate(
              4,
              (index) => Container(
                width: 65.w,
                height: 65.h,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderEnabled, width: 1),
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.transparent,
                ),
              ),
            ),
          ]),
          Text(
            "Max image size is 5 Mb",
            style: TextStyle(
                fontSize: 13.5.sp,
                fontWeight: AppFontWeight.regular,
                color: AppColors.textColor2),
          ),
          Text(
            "Supported format are *jpg and *png",
            style: TextStyle(
                fontSize: 13.5.sp,
                fontWeight: AppFontWeight.regular,
                color: AppColors.textColor2),
          ),
        ],
      ),
    );
  }
}

class ListItemChoice extends StatefulWidget {
  const ListItemChoice({super.key});

  @override
  State<ListItemChoice> createState() => _ListItemChoiceState();
}

class _ListItemChoiceState extends State<ListItemChoice> {
  bool? _isChecked1 = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "How would you like to list this item?*",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            children: [
              SizedBox(
                height: 20.h,
                width: 20.w,
                child: Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: _isChecked1,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked1 = value;
                      });
                    }),
              ),
              SizedBox(
                width: 12.w,
              ),
              const Text("For sale"),
              SizedBox(
                width: 12.w,
              ),
              SizedBox(
                height: 20.h,
                width: 20.w,
                child: Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: _isChecked2,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked2 = value;
                      });
                    }),
              ),
              SizedBox(
                width: 12.w,
              ),
              const Text("For exchange"),
              SizedBox(
                width: 12.w,
              ),
              SizedBox(
                height: 20.h,
                width: 20.w,
                child: Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: _isChecked3,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked3 = value;
                      });
                    }),
              ),
              SizedBox(
                width: 12.w,
              ),
              const Text("For free"),
            ],
          )
        ],
      ),
    );
  }
}
