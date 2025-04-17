import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/l10n/app_localizations.dart';

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
            AppLocalizations.of(context).all,
            style: AppTextStyles.price.copyWith(fontSize: 13),
          ),
        ),
        TextButton(
          onPressed: null,
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              backgroundColor: AppColors.description.withValues(alpha: 0.1)),
          child: Text(
            AppLocalizations.of(context).combos,
            style: AppTextStyles.price.copyWith(color:AppColors.deliveryTime ,fontSize: 13),
          ),
        ),
        TextButton(
          onPressed: null,
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              backgroundColor: AppColors.description.withValues(alpha: 0.1)),
          child: Text(
            AppLocalizations.of(context).sliders,
            style: AppTextStyles.price.copyWith(color:AppColors.deliveryTime ,fontSize: 13),
          ),
        ),
        TextButton(
          onPressed: null,
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              backgroundColor: AppColors.description.withValues(alpha: 0.1)),
          child: Text(
            AppLocalizations.of(context).values,
            style: AppTextStyles.price.copyWith(color:AppColors.deliveryTime ,fontSize: 13),
          ),
        )
      ],
    );
  }
}
