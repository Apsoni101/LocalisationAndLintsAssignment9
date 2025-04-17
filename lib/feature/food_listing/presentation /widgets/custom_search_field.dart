import 'package:flutter/material.dart';
import 'package:foodappassignment8/app_localisation/app_localizations.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/l10n/app_localizations.dart';


class CustomSearchField extends StatelessWidget {
  final Function(String)? onChanged;

  const CustomSearchField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SearchBar(
        hintText: AppLocalizations.of(context).searchTxt,
        hintStyle:  WidgetStatePropertyAll<TextStyle>(
          AppTextStyles.searchHint
        ),
        onChanged: onChanged,
        padding: const WidgetStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 16),
        ),
        leading:  Image.asset(AppAssets.search),
        elevation: const WidgetStatePropertyAll(3),
        backgroundColor: WidgetStatePropertyAll(AppColors.white),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
