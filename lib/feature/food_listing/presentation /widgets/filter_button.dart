import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';

class FilterButton extends StatelessWidget {
 final  VoidCallback onTap;
  const FilterButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(AppAssets.filter),
    );
  }
}
