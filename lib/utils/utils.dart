import 'package:flutter/material.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

class Utils {
  static Future<void> showSnakbar({
    required String title,
    required BuildContext context,
    Color? color,
  }) async {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: color ?? Colors.red,
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(20),
      content: Center(
        child: Text(title),
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

void showErrorSnackbar(failure, BuildContext context) {
  String? title;
  if (failure is ServerError) {
    title = "Something went wrong..";
  } else if (failure is ClientError) {
    title = "Try again after some time";
  } else if (failure is ApiResponseError) {
    title = failure.message.toString();
  } else if (failure is NetworkError) {
    title = "Check your internet connection";
  } else if (failure is SomethingWentWrong) {
    title = "Something went wrong";
  }
  Utils.showSnakbar(title: title ?? '', context: context);
}

String? validateRequired(val, {errorText = "This field is required"}) {
  if (val.length == 0) {
    return errorText;
  }
  if (val.length > 0) {
    if (val.length < 3) {
      return "Enter atleast 3 characters";
    }
  }

  return null;
}

String? validateEmail(dynamic input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (input.isEmpty) {
    return "Enter a valid Email ID";
  } else {
    if (RegExp(emailRegex).hasMatch(input)) {
      return null;
    } else {
      return "Invalid Email Address";
    }
  }
}

String? validatePhoneNumber(value) {
  if (value.isEmpty) {
    return 'Phone number is required';
  }
  if (!RegExp(r'^\d{10}$').hasMatch(value)) {
    return 'Enter a valid 10-digit phone number';
  }
  return null;
}

String? validatePincode(val) {
  final regExp = RegExp(r'(^\d+$)');

  if (val.length == 0) {
    return "Enter a pincode";
  }

  if (val.length != 6) {
    return "Invalid pincode";
  }

  if (!regExp.hasMatch(val)) {
    return "Invalid pincode";
  }
  return null;
}
