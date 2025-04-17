import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';

class IncrementDecrementButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPress;

  const IncrementDecrementButton(
      {super.key, required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      icon: Icon(
        icon,
        color: AppColors.white,
      ),
      style: IconButton.styleFrom(
          backgroundColor: AppColors.buttonBg,
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
