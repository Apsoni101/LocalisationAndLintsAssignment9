import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';

class ProfileOptionTile extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  const ProfileOptionTile({super.key, required this.onPress, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      contentPadding: EdgeInsets.symmetric(horizontal: 30),
      dense: true,
      visualDensity: const VisualDensity(vertical: -3),
      title: Text(title,
          style: AppTextStyles.paymentTxt),
      trailing:
       Image.asset(AppAssets.arrowRight,width: 18,height: 18,),
    );
  }
}
