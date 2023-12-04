import 'package:flutter/material.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/text_style.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.emailAddress,
    this.textCapitalization = TextCapitalization.sentences,
    this.textInputAction = TextInputAction.next,
  });
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction textInputAction;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      textInputAction: textInputAction,
      controller: controller,
      validator: validator,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        hintText: hintText,
        hoverColor: Colors.grey,
        contentPadding: kAppPaddingAll12,
        hintStyle: kTextStyle13MediumGrey,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 1.2, color: Colors.grey),
        ),
      ),
    );
  }
}
