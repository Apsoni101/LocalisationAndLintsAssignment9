import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';


class TextFormFieldWidget extends StatelessWidget {
  final String label;
  final bool obscureText;
  final TextInputType? keyboardType;
  final int maxLines;

   TextFormFieldWidget({
    super.key,
    required this.label,
    this.obscureText = false,
    this.keyboardType,
    this.maxLines = 1,
  });

  final _borderColor = AppColors.border;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLines: maxLines,


      decoration: InputDecoration(
        labelText: label,

        floatingLabelBehavior: FloatingLabelBehavior.auto,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 39,
          vertical: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: _borderColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: _borderColor, width: 2),
        ),
      ),
    );
  }
}