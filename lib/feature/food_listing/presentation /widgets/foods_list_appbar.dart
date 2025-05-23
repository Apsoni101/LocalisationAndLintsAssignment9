import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foodappassignment8/app_localisation/app_localizations.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/core/navigation/app_router.gr.dart';

class FoodsListAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FoodsListAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: SafeArea(
          child: ListTile(
            title: Text(
              AppLocalizations.of(context).appName,
              style: AppTextStyles.title,
            ),titleAlignment: ListTileTitleAlignment.top,
            subtitle: Text(
              AppLocalizations.of(context).orderQuote,
              style: AppTextStyles.subTitle,
            ),
            trailing:InkWell(onTap: ()=>context.router.navigate(const EditProfileRoute()),child: Image.asset(AppAssets.profile,width:50 ,height: 50,)),
          ),),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
}
