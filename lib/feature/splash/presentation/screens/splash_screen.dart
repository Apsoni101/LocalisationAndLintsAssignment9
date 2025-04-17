import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foodappassignment8/app_localisation/app_localizations.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/core/navigation/app_router.gr.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  void _navigate(BuildContext context) {
    Future<dynamic>.delayed(const Duration(seconds: 1), () {
      if (context.mounted) {
        context.replaceRoute(const HomeRoute());
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    _navigate(context);

    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            AppColors.gradientTop,
            AppColors.gradientCenter,
            AppColors.gradientBottom
          ,],
        ),
      ),
      child: Stack(
        children: <Widget>[
          Center(
            heightFactor: 10,
            child: Text(
              AppLocalizations.of(context).appName,
              style: AppTextStyles.splashTitle,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppAssets.burger1),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(AppAssets.burger2),
          ),
        ],
      ),
    ),);
  }
}
