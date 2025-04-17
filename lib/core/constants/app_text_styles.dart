import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const fontFamilyLobster = "Lobster";
  static const fontFamilyPoppins = "Poppins";
  static const fontFamilyRoboto = "Roboto";
  static const fontFamilyInter = "Inter";

  static final title = TextStyle(
      fontFamily: fontFamilyLobster,
      fontWeight: FontWeight.w400,
      color: AppColors.title,
      fontSize: 35,
      letterSpacing: 0,
      height: 1.35);
  static final subTitle = TextStyle(
      fontFamily: fontFamilyPoppins,
      fontWeight: FontWeight.w500,
      color: AppColors.subTitle,
      fontSize: 14,
      letterSpacing: 0,
      height: 1);
  static final searchHint = TextStyle(
      fontFamily: fontFamilyRoboto,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
      fontSize: 16,
      letterSpacing: 0,
      height: 1);
  static final rating = TextStyle(
      fontFamily: fontFamilyRoboto,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
      fontSize: 14,
      letterSpacing: 0,
      height: 1.35);
  static final gridItemTitle = TextStyle(
      fontFamily: fontFamilyRoboto,
      fontWeight: FontWeight.w600,
      color: AppColors.title,
      fontSize: 13,
      letterSpacing: 0,
      height: 1.35);
  static final gridItemSubTitle = TextStyle(
      fontFamily: fontFamilyRoboto,
      fontWeight: FontWeight.w400,
      color: AppColors.title,
      fontSize: 12,
      letterSpacing: 0,
      height: 1.35);
  static final splashTitle = TextStyle(
      fontFamily: fontFamilyLobster,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      fontSize: 50,
      letterSpacing: 0,
      height: 1);
  static final deliveryTime = TextStyle(
      fontFamily: fontFamilyRoboto,
      fontWeight: FontWeight.w500,
      color: AppColors.deliveryTime,
      fontSize: 14,
      letterSpacing: 0,
      height: 1.35);
  static final foodItemDetailTitle = TextStyle(
      fontFamily: fontFamilyRoboto,
      fontWeight: FontWeight.w600,
      color: AppColors.title,
      fontSize: 25,
      letterSpacing: 0,
      height: 1.35,
      overflow: TextOverflow.ellipsis);
  static final description = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w400,
    color: AppColors.description,
    fontSize: 15,
    letterSpacing: 0,
    height: 1.70,
  );
  static final orderNow = TextStyle(
    fontFamily: fontFamilyInter,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontSize: 18,
    letterSpacing: 0,
    height: 1.35,
  );
  static final price = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    fontSize: 18,
    letterSpacing: 0,
    height: 1.35,
  );
  static final spicy = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontSize: 13,
    letterSpacing: 0,
    height: 1.35,
  );
  static final mild = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.mild,
    fontSize: 10,
    letterSpacing: 0,
    height: 1.35,
  );
  static final hot = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.hot,
    fontSize: 10,
    letterSpacing: 0,
    height: 1.35,
  );
  static final quantity = TextStyle(
    fontFamily: fontFamilyInter,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontSize: 16,
    letterSpacing: 0,
    height: 1.35,
  );
  static final success = TextStyle(
    fontFamily: fontFamilyPoppins,
    fontWeight: FontWeight.w700,
    color: AppColors.hot,
    fontSize: 24,
    letterSpacing: 0,
    height: 1,
  );
  static final successTxt = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w400,
    color: AppColors.deliveryTime,
    fontSize: 11,
    letterSpacing: 0,
    height: 1.54,
  );
  static final goBack = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontSize: 12,
    letterSpacing: 0,
    height: 1.54,
  );
  static final logout = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.hot,
    fontSize: 16,
    letterSpacing: 0,
    height: 1.54,
  );
  static final editProfile = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontSize: 16,
    letterSpacing: 0,
    height: 1.54,
  );
  static final paymentTxt = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w600,
    color: AppColors.labelTxt,
    fontSize: 14,
    letterSpacing: 0,
    height: 1.32,
  );
  static final textFieldHint = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w700,
    color: AppColors.labelTxt,
    fontSize: 17,
    letterSpacing: 0,
    height: 1.54,
  );
  static final textFieldStyle = TextStyle(
    fontFamily: fontFamilyRoboto,
    fontWeight: FontWeight.w900,
    color: AppColors.black,
    fontSize: 14,
    letterSpacing: 0,
    height: 1,
  );
}
