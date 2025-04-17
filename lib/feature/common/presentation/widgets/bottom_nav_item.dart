import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';

class BottomNavItem extends StatelessWidget {
  final VoidCallback onPress;
  final String assetName;
  final bool isSelected;

  const BottomNavItem({
    super.key,
    required this.onPress,
    required this.assetName,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            assetName,
            color: AppColors.white,
            width: 24,
            height: 24,
          ),
          const SizedBox(height: 4),
          if (isSelected)
            CircleAvatar(
              radius: 2,
              backgroundColor: AppColors.white,
            ),
        ],
      ),
    );
  }
}
