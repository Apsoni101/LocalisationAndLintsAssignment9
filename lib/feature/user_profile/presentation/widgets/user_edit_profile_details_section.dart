import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/feature/user_profile/presentation/widgets/custom_text_button.dart';
import 'package:foodappassignment8/feature/user_profile/presentation/widgets/profile_option_tile.dart';
import 'package:foodappassignment8/feature/user_profile/presentation/widgets/user_profile_form.dart';
import 'package:foodappassignment8/l10n/app_localizations.dart';

class UserEditProfileDetailsSection extends StatelessWidget {
  const UserEditProfileDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
      ),
      children: [
        UserProfileForm(),
        const SizedBox(height: 40),
        Divider(indent: 28, endIndent: 28, height: 2, color: AppColors.divider),
        const SizedBox(height: 20),
        ProfileOptionTile(onPress: () {}, title: AppLocalizations.of(context).paymentDetails),
        ProfileOptionTile(onPress: () {}, title: AppLocalizations.of(context).orderHistory),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextButton(
              title: AppLocalizations.of(context).editProfile,
              icon: AppAssets.edit,
              backgroundColor: AppColors.title,
              style: AppTextStyles.editProfile,
            ),
            CustomTextButton(
              title: AppLocalizations.of(context).logOut,
              icon: AppAssets.logout,
              style: AppTextStyles.logout,
              side: BorderSide(color: AppColors.hot, width: 3),
            )
          ],
        ),
      ],
    );
  }
}
