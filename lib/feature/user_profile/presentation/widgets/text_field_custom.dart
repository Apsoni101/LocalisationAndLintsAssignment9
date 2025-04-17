import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  final String? labelText;
  final Widget? label;

  const CustomTextFormField({super.key, this.labelText, this.label});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) => TextFormField(
        style: AppTextStyles.textFieldStyle,
        cursorColor: AppColors.black,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
            label: widget.label,
            labelText: widget.labelText,
            labelStyle: AppTextStyles.textFieldHint,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
                  const BorderSide(color: AppColors.outlineBorder, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
                  const BorderSide(color: AppColors.outlineBorder, width: 2),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
                  const BorderSide(color: AppColors.outlineBorder, width: 2),
            )),
      );
}
