import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_strings.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final title = TextStyle(
      fontFamily: AppsStrings.fontFamilyLobster,
      fontWeight: FontWeight.w400,
      color: AppColors.title,
      fontSize: 35,
      letterSpacing: 0,
      height: 1.35);
  static final subTitle = TextStyle(
      fontFamily: AppsStrings.fontFamilyPoppins,
      fontWeight: FontWeight.w500,
      color: AppColors.subTitle,
      fontSize: 14,
      letterSpacing: 0,
      height: 1);
  static final searchHint = TextStyle(
      fontFamily: AppsStrings.fontFamilyRoboto,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
      fontSize: 16,
      letterSpacing: 0,
      height: 1);
  static final rating = TextStyle(
      fontFamily: AppsStrings.fontFamilyRoboto,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
      fontSize: 14,
      letterSpacing: 0,
      height: 1.35);
  static final gridItemTitle = TextStyle(
      fontFamily: AppsStrings.fontFamilyRoboto,
      fontWeight: FontWeight.w600,
      color: AppColors.title,
      fontSize: 13,
      letterSpacing: 0,
      height: 1.35);
  static final gridItemSubTitle = TextStyle(
      fontFamily: AppsStrings.fontFamilyRoboto,
      fontWeight: FontWeight.w400,
      color: AppColors.title,
      fontSize: 12,
      letterSpacing: 0,
      height: 1.35);
  static final splashTitle = TextStyle(
      fontFamily: AppsStrings.fontFamilyLobster,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      fontSize: 50,
      letterSpacing: 0,
      height: 1);
  static final deliveryTime = TextStyle(
      fontFamily: AppsStrings.fontFamilyRoboto,
      fontWeight: FontWeight.w500,
      color: AppColors.deliveryTime,
      fontSize: 14,
      letterSpacing: 0,
      height: 1.35);
  static final foodItemDetailTitle = TextStyle(
      fontFamily: AppsStrings.fontFamilyRoboto,
      fontWeight: FontWeight.w600,
      color: AppColors.title,
      fontSize: 25,
      letterSpacing: 0,
      height: 1.35,
      overflow: TextOverflow.ellipsis);
  static final description = TextStyle(
      fontFamily: AppsStrings.fontFamilyRoboto,
      fontWeight: FontWeight.w400,
      color: AppColors.description,
      fontSize: 15,
      letterSpacing: 0,
      height: 1.70,
      );
  static final orderNow = TextStyle(
      fontFamily: AppsStrings.fontFamilyInter,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
      fontSize: 18,
      letterSpacing: 0,
      height: 1.35,
      );
  static final price = TextStyle(
      fontFamily: AppsStrings.fontFamilyRoboto,
      fontWeight: FontWeight.w700,
      color: AppColors.white,
      fontSize: 18,
      letterSpacing: 0,
      height: 1.35,
      );
  static final spicy = TextStyle(
    fontFamily: AppsStrings.fontFamilyRoboto,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontSize: 13,
    letterSpacing: 0,
    height: 1.35,
  );
  static final mild = TextStyle(
    fontFamily: AppsStrings.fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.mild,
    fontSize: 10,
    letterSpacing: 0,
    height: 1.35,
  );
  static final hot = TextStyle(
    fontFamily: AppsStrings.fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.hot,
    fontSize: 10,
    letterSpacing: 0,
    height: 1.35,
  );
  static final quantity = TextStyle(
    fontFamily: AppsStrings.fontFamilyInter,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontSize: 16,
    letterSpacing: 0,
    height: 1.35,
  );
  static final success = TextStyle(
    fontFamily: AppsStrings.fontFamilyPoppins,
    fontWeight: FontWeight.w700,
    color: AppColors.hot,
    fontSize: 24,
    letterSpacing: 0,
    height: 1,
  );
  static final successTxt = TextStyle(
    fontFamily: AppsStrings.fontFamilyRoboto,
    fontWeight: FontWeight.w400,
    color: AppColors.deliveryTime,
    fontSize: 11,
    letterSpacing: 0,
    height: 1.54,

  );
  static final goBack = TextStyle(
    fontFamily: AppsStrings.fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontSize: 12,
    letterSpacing: 0,
    height: 1.54,

  );
  static final logout = TextStyle(
    fontFamily: AppsStrings.fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.hot,
    fontSize: 18,
    letterSpacing: 0,
    height: 1.54,

  );
  static final editProfile = TextStyle(
    fontFamily: AppsStrings.fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontSize: 18,
    letterSpacing: 0,
    height: 1.54,

  );
  static final paymentTxt = TextStyle(
    fontFamily: AppsStrings.fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.deliveryTime,
    fontSize: 17,
    letterSpacing: 0,
    height: 1.54,

  );
}
