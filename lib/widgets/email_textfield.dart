import 'package:flutter/material.dart';
import 'package:weed_club/utils/colors.dart';
import 'package:weed_club/utils/constants.dart';

class EmailTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  const EmailTextfield({
    required this.hintText,
    this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: borderColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: borderColor),
        ),
        isDense: true,
      ),
    );
  }
}
