import 'package:flutter/material.dart';

import '/app/core/values/app_colors.dart';

const defaultFontFamily = 'Roboto';

abstract class FontW {
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w600;
  static const bold = FontWeight.w700;
}

abstract class TextStyles {
  static const medium10s = TextStyle(
    fontWeight: FontW.regular,
    fontSize: 10,
    // letterSpacing: 1.5,
    color: AppColors.color9E9E9E,
    fontFamily: defaultFontFamily,
  );
  static const medium14s = TextStyle(
    fontWeight: FontW.medium,
    fontSize: 14,
    // letterSpacing: 1.5,
    color: AppColors.color0D1326,
    fontFamily: defaultFontFamily,
  );
  static const medium16s = TextStyle(
    fontWeight: FontW.medium,
    fontSize: 16,
    // letterSpacing: 1.5,
    color: AppColors.colorFFFFFF,
    fontFamily: defaultFontFamily,
  );
  static const regular14r = TextStyle(
    fontWeight: FontW.regular,
    fontSize: 14,
    // letterSpacing: 1.5,
    color: AppColors.color616161,
    fontFamily: defaultFontFamily,
  );
  static const regular12r = TextStyle(
    fontWeight: FontW.regular,
    fontSize: 12,
    // letterSpacing: 1.5,
    color: AppColors.color263B92,
    fontFamily: defaultFontFamily,
  );
  static const medium20s = TextStyle(
    fontWeight: FontW.medium,
    fontSize: 20,
    // letterSpacing: 1.5,
    color: AppColors.color0D1326,
    fontFamily: defaultFontFamily,
  );
}
