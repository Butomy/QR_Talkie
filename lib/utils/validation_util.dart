import 'package:flutter/material.dart';

class ValidationUtil {
  final BuildContext context;
  ValidationUtil(this.context);

  String? phoneValidation(String? value) {
    if (value!.isEmpty) {
      return "Enter your Phone Number";
    } else {
      return null;
    }
  }

  String? passwordValidation(String? value) {
    if (value!.isEmpty) return 'Please enter your password';
    return null;
  }

  String? confirmPasswordValidation(String? password, String? confirmPassword) {
    if (password!.isEmpty) {
      return 'Please enter your password';
    }
    if (password != confirmPassword) {
      return 'Passwords do not match';
    }
    return null;
  }

  String? nameValidation(String? value) {
    if (value!.isEmpty) return "Enter  Name";
    // return AppLocalizations.of(context)!.plz_enter_password;
    return null;
  }

  String? commonValidation(String? value) {
    if (value!.isEmpty) return "enter some text";
    // return AppLocalizations.of(context)!.plz_enter_password;
    return null;
  }

  String? numberValidation(String? number, String? count) {
    if (number!.isEmpty) {
      return 'Please enter your phone Number';
    }
    if (number.length != count) {
      return 'Enter Correct Phone Number';
    }
    return null;
  }

  String? validatePassword(String? value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      return 'Please enter password';
    } else if (value.length <= 8) {
      return ("Password Must be more than 8 characters");
    } else {
      if (!regex.hasMatch(value)) {
        return 'Password contains upper,lower,digit and Special character';
      } else {
        return null;
      }
    }
  }

  String? emailValidation(String? email) {
    bool valid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email!);
    print(valid);
    if (email.isEmpty) {
      return 'Please Enter Email';
    } else if (valid == false) {
      return 'Enter Valid email';
    }
    return null;
  }
}
