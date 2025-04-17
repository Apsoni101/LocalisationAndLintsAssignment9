import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/navigation/app_router.gr.dart';
import 'package:foodappassignment8/feature/common/presentation/widgets/custom_bottom_navigation.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        FoodsListRoute(),
        ProfileDisplayInfoRoute(),
        CommentsRoute(),
        WishlistRoute()
      ],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: AppColors.hot,
        child: Image.asset(
          AppAssets.add,
          width: 14,
          height: 14,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (context,_) => const CustomBottomNavigation(),
    );
  }
}
