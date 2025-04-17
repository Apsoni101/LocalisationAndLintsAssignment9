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

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      color: AppColors.hot,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildItem(context, tabsRouter, 0, AppAssets.home),
          _buildItem(context, tabsRouter, 1, AppAssets.profileIc),
          const Expanded(flex: 1, child: SizedBox.shrink()),
          _buildItem(context, tabsRouter, 2, AppAssets.comment),
          _buildItem(context, tabsRouter, 3, AppAssets.filledHeart),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, TabsRouter tabsRouter, int index, String asset) {
    final isSelected = tabsRouter.activeIndex == index;

    return Expanded(
      flex: 1,
      child: BottomNavItem(
        onPress: () {
          tabsRouter.setActiveIndex(index);
        },
        assetName: asset,
        isSelected: isSelected,
      ),
    );
  }
}
