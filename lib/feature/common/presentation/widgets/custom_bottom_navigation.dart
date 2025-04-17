import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'bottom_nav_item.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final activeIndex = tabsRouter.activeIndex;

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      color: AppColors.hot,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            onPress: () => tabsRouter.setActiveIndex(0),
            assetName: AppAssets.home,
            isSelected: activeIndex == 0,
          ),
          BottomNavItem(
            onPress: () => tabsRouter.setActiveIndex(1),
            assetName: AppAssets.profileIc,
            isSelected: activeIndex == 1,
          ),
          const SizedBox(),
          BottomNavItem(
            onPress: () => tabsRouter.setActiveIndex(2),
            assetName: AppAssets.comment,
            isSelected: activeIndex == 2,
          ),
          BottomNavItem(
            onPress: () => tabsRouter.setActiveIndex(3),
            assetName: AppAssets.filledHeart,
            isSelected: activeIndex == 3,
          ),
        ],
      ),
    );
  }
}
