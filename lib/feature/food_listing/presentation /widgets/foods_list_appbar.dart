import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_strings.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';

class FoodsListAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FoodsListAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: SafeArea(
          child: ListTile(
            title: Text(
              AppsStrings.appName,
              style: AppTextStyles.title,
            ),titleAlignment: ListTileTitleAlignment.top,
            subtitle: Text(
              AppsStrings.orderQuote,
              style: AppTextStyles.subTitle,
            ),
            trailing:Image.asset(AppAssets.profile,width:50 ,height: 50,),
          )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 30);
}
