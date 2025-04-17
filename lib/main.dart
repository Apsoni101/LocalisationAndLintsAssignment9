import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/di/service_locator.dart';
import 'package:foodappassignment8/core/navigation/app_router.dart';
import 'package:foodappassignment8/feature/food_detail/presentation%20/screens/food_item_detail_screen.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/screens/foods_list_screen.dart';
import 'package:foodappassignment8/feature/splash/presentation/screens/splash_screen.dart';
import 'package:foodappassignment8/feature/user_profile/presentation/screens/user_profile_screen.dart';

void main() {
  AppInjector().setupInjector();
  runApp( MyApp());
}
final _appRouter=AppRouter();

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primaryColor: AppColors.white,
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.white,
          surfaceTintColor: Colors.transparent,
        ),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
