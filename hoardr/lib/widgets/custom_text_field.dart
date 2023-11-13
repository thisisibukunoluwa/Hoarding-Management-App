import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:hoardr/theme/font_weight.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? initialValue;
  final bool? enabled;
  final String? hintText;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode, nextFocusNode;
  final VoidCallback? submitAction;
  final bool obscureText;
  final String? Function(String?)? validateFunction;
  final void Function(String?)? onSaved, onChange;
  final InputDecoration? decoration;
  final String? autofillHints;
  final AutovalidateMode? autovalidateMode;

  CustomTextField({
    this.autofillHints,
    this.label = "Label",
    this.initialValue,
    this.enabled,
    this.hintText,
    this.textInputType,
    this.controller,
    this.textInputAction,
    this.focusNode,
    this.nextFocusNode,
    this.submitAction,
    this.obscureText = false,
    this.validateFunction,
    this.onSaved,
    this.onChange,
    this.decoration,
    this.autovalidateMode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.label,
          style: TextStyle(
              fontSize: 14.0.sp, height: 1.5.h, fontWeight: AppFontWeight.regular),
        ),
        SizedBox(height: 8),
        Container(
          width: MediaQuery.of(context).size.width,
          child: TextFormField(
            initialValue: initialValue,
            enabled: enabled,
            onChanged: onChange,
            style: TextStyle(
              fontSize: 16.0.sp,
            ),
            key: key,
            controller: controller,
            obscureText: obscureText,
            autovalidateMode: autovalidateMode,
            keyboardType: textInputType,
            validator: validateFunction,
            onSaved: onSaved,
            textInputAction: textInputAction,
            focusNode: focusNode,
            decoration: decoration,
            onFieldSubmitted: (String term) {
              if (nextFocusNode != null) {
                focusNode!.unfocus();
                FocusScope.of(context).requestFocus(nextFocusNode);
              } else {
                submitAction!();
              }
            },
          ),
        ),
      ],
    );
  }
}
