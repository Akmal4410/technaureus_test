import 'package:flutter/material.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/text_style.dart';

class AppTextFieldBorder extends StatelessWidget {
  const AppTextFieldBorder({
    super.key,
    required this.hintText,
    this.controller,
    this.validator,
  });
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      controller: controller,
      cursorColor: Colors.grey,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hoverColor: Colors.grey,
        hintStyle: kTextStyle13MediumGrey,
        contentPadding: kAppPaddingAll12,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.3),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
