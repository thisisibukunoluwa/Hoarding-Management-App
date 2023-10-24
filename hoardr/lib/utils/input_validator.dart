import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputValidator {
  static tryAlpha(value, [String? error]) {
    if (value!.isEmpty) {
      return error ?? 'Name is required.';
    }
    final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value)) {
      return error ?? 'Please enter only alphabetical characters.';
    }
    return null;
  }

  static tryDouble(String? value, [String? error]) {
    if (value!.isEmpty) {
      return error ?? 'Field is required.';
    }
    if ((double.tryParse(value) ?? 0.0) <= 0.0) {
      return error ?? 'Not a valid number.';
    }
    return null;
  }

  static tryInt(value, [String? error]) {
    if (value.isEmpty) {
      return error ?? 'Field is required.';
    }
    if ((int.tryParse(value) ?? 0.0) <= 0) {
      return error ?? 'Not a valid number.';
    }
    return null;
  }

  static tryEmail(String? value, [String? error]) {
    if (value!.isEmpty) {
      return error ?? 'Email is required.';
    }
    if (!value.contains('@')) {
      return error ?? 'Not a valid email.';
    }
    return null;
  }

  static tryPhone(String? value, [String? error]) {
    if (value!.isEmpty) {
      return error ?? 'Phone number is required.';
    }
    if (!RegExp(r'^\d+?$').hasMatch(value) ||
        !value.startsWith(RegExp('0[1789]')) ||
        // Land lines eg 01
        (value.startsWith('01') && value.length != 9) ||
        // Land lines eg 080
        (value.startsWith(RegExp('0[789]')) && value.length != 11)) {
      return error ?? 'Not a valid phone number.';
    }
    return null;
  }

  static tryList(value, [String? error]) {
    if (value.isEmpty) {
      return error ?? 'Field is required.';
    }
    return null;
  }

  static tryPassword(String? value, [String? error]) {
    if (value!.isEmpty || value.trim().isEmpty) {
      return error ?? 'Password field is required.';
    }
    if (!value.contains(RegExp(r'^.*(?=.{6,})(?=.*\d)(?=.*[a-zA-Z]).*$'))) {
      return 'Password field requires at least 6 characters with one digit & one alphabet.';
    }
    return null;
  }

  static tryString(value, [String? error]) {
    if (value == null || value.isEmpty || value.trim().isEmpty) {
      return error ?? 'Field is required.';
    }
  }

  static tryFile(file, [String? error]) {
    if (file.path.isEmpty) {
      return error ?? 'Invalid File.';
    }
  }

  static tryAmount(value, [String? error]) {
    if (value.isEmpty) {
      return error ?? 'Amount is required.';
    }
    if (double.tryParse(value) == null) {
      return error ?? 'Invalid Amount.';
    }
    if (!RegExp(r'^\d+(\.\d{1,2})?$').hasMatch(value)) {
      return error ?? 'Not a valid amount.';
    }
    if (double.tryParse(value)! <= 0.0) {
      return error ?? 'Zero Amount is not allowed.';
    }

    // tryDiff(
    //   FormFieldState<String> field, [
    //   String? error,
    // ]) {
    //     if (field.value != value) {
    //       return error ?? 'Values don\'t match';
    //     }
    //     return null;
    // }

    // tryDiffPassword(FormFieldState<String> passwordField,) {
    //     if (passwordField.value == null || passwordField.value!.isEmpty) {
    //       return 'Please enter a password.';
    //     }
    //     return tryDiff(passwordField,'The passwords don\'t match',)(value);
    //   };
    // }
  }
}


final Map<RegExp, String> validators = {
  RegExp(r'[a-z]'): '1 or more lowercase letter',
  RegExp(r'[A-Z]'): '1 or more uppercase letters',
  RegExp(r'[0-9]'): '1 or more numbers',
  RegExp(r'[!@#\\$%^&*(),.?":{}|<>]'): '1 or more special characters',
  RegExp(r'^.{8,10}$'): 'Password must be between 8 and 10 characters',
};
