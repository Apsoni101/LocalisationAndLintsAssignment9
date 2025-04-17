import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/feature/user_profile/presentation/widgets/text_field_custom.dart';
import 'package:foodappassignment8/l10n/app_localizations.dart';

class UserProfileForm extends StatefulWidget {
  const UserProfileForm({super.key});

  @override
  State<UserProfileForm> createState() => _UserProfileFormState();
}

class _UserProfileFormState extends State<UserProfileForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          spacing: 20,
          children: [
            CustomTextFormField(labelText: AppLocalizations.of(context).name),
            CustomTextFormField(labelText: AppLocalizations.of(context).email,),
            CustomTextFormField(labelText: AppLocalizations.of(context).address,),
            CustomTextFormField(label: Row(
              spacing: 6,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(AppLocalizations.of(context).password),
                Image.asset(AppAssets.lock, color: AppColors.description,width: 24,height: 24,),
              ],
            )),
          ],
        ));
  }
}
