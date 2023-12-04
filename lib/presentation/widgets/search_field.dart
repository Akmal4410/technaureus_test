import 'package:flutter/material.dart';
import 'package:technaureus/utils/size_constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    this.suffixIcon,
    this.controller,
    this.onChanged,
  });

  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: const Icon(Icons.search, color: Colors.grey),
        hoverColor: Colors.grey,
        contentPadding: kAppPaddingAll12,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.3),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        suffixIcon: IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.qr_code, color: Colors.grey),
              suffixIcon ?? kSizedBox,
            ],
          ),
        ),
      ),
    );
  }
}
