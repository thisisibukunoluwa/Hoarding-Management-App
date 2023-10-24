import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:hoardr/theme/font_weight.dart';
import 'package:hoardr/utils/input_validator.dart';
import 'package:hoardr/utils/size_config.dart';
import 'package:hoardr/widgets/custom_text_field.dart';
import 'package:hoardr/widgets/password_strength_checker.dart';
import 'package:hoardr/widgets/register_today.dart';
import 'package:hoardr/widgets/wide_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.onSubmit});
  final ValueChanged<String> onSubmit;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool loading = false;
  bool validate = false;
  bool? _isChecked = false;
  bool _submitted = false;
  bool _autovalidate = false;
  String _email = '', _password = '', _name = '';
  bool passwordVisible = false;

  void _submit() {
    setState(() => _submitted = true);
    if (_formKey.currentState!.validate()) {
      // _formKey.currentState!.save();
      widget.onSubmit(_name);
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    final user = "user";
    FocusNode emailFN = FocusNode();
    FocusNode passFN = FocusNode();

    return SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.only(
              left: 0.04 * width,
              right: 0.04 * width,
              top: 0.07 * height,
              bottom: 0.07 * height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello ${user}, \nWe are glad to have you back",
                  style: const TextStyle(
                      fontWeight: AppFontWeight.regular,
                      fontSize: 25,
                      color: AppColors.textColor1,
                      height: 1.8),
                ),
                SizedBox(height: 0.05 * height),
                CustomTextField(
                  autofillHints: AutofillHints.email,
                  label: "Email address",
                  // enabled: !loading,
                  hintText: "Email",
                  textInputAction: TextInputAction.next,
                  validateFunction: (value) => InputValidator.tryEmail(value),
                  autovalidateMode: _submitted
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  onSaved: (String? val) {
                    _name = val ?? '';
                  },
                  // focusNode: emailFN,
                  // nextFocusNode: passFN,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  label: "Password",
                  enabled: !loading,
                  hintText: "Password",
                  obscureText: passwordVisible,
                  textInputAction: TextInputAction.done,
                  autovalidateMode: _submitted
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  validateFunction: (value) =>
                      InputValidator.tryPassword(value),
                  onSaved: (String? val) {
                    _name = val ?? '';
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      focusColor: AppColors.actionBlue,
                      icon: Icon(passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                    alignLabelWithHint: false,
                    filled: true,
                    // focusNode: passFN,
                  ),
                ),
                //  PasswordStrengthChecker(
                //   password: ,
                //   onStrengthChanged: ,
                //   validators: validators
                //  ),
                const SizedBox(height: 13.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value;
                              });
                            }),
                        const Text("Remember Me")
                      ],
                    ),
                    const Spacer(),
                    RichText(
                      text: TextSpan(
                        text: "Forgot Password?",
                        style: const TextStyle(
                          color: AppColors.actionBlue,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go('/forgot-password');
                          },
                      ),
                    )
                  ],
                ),
                WideButton(
                    onPressed: () {
                      _name.isEmpty && _email.isNotEmpty ? _submit : null;
                      context.push('/');
                    },
                    buttonText: "LOGIN"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [RegisterToday(parentContext: context)],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
