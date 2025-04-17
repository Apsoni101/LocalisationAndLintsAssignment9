import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/l10n/app_localizations.dart';

class RatingRow extends StatelessWidget {
  final Color? color;
  const RatingRow({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 4,
      children: [
        Image.asset(
          AppAssets.rating,
          color: AppColors.rating,
        ),
        Text(AppLocalizations.of(context).rating5,style: AppTextStyles.rating.copyWith(color: color),)
      ],
    );
  }
}
