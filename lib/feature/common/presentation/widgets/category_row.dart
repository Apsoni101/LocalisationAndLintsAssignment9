import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_strings.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(spacing: 10,
      children: [

        TextButton(
          onPressed: null,
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              backgroundColor: AppColors.buttonBg),
          child: Text(
            AppsStrings.all,
            style: AppTextStyles.price.copyWith(fontSize: 13),
          ),
        ),
        TextButton(
          onPressed: null,
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              backgroundColor: AppColors.description.withOpacity(0.1)),
          child: Text(
            AppsStrings.combos,
            style: AppTextStyles.price.copyWith(color:AppColors.deliveryTime ,fontSize: 13),
          ),
        ),
        TextButton(
          onPressed: null,
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              backgroundColor: AppColors.description.withOpacity(0.1)),
          child: Text(
            AppsStrings.sliders,
            style: AppTextStyles.price.copyWith(color:AppColors.deliveryTime ,fontSize: 13),
          ),
        ),
        TextButton(
          onPressed: null,
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              backgroundColor: AppColors.description.withOpacity(0.1)),
          child: Text(
            AppsStrings.values,
            style: AppTextStyles.price.copyWith(color:AppColors.deliveryTime ,fontSize: 13),
          ),
        )
      ],
    );
  }
}
