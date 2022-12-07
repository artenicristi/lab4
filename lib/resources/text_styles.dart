import 'package:flutter/material.dart';

import 'custom_colors.dart';
import 'fonts.dart';

class TextStyles {
  static TextStyle poppins18({Color color = CustomColors.maastrichtBlue,
                              double fontSize = 18.0,
                              double lineHeight = 24.0})
  =>
      TextStyle(
        fontFamily: Fonts.poppinsRegular,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        height: lineHeight/fontSize,
        color: color,
      );

  static TextStyle poppins14({Color color = CustomColors.cyanCornflowerBlue,
                              double fontSize = 14.0,
                              FontWeight fontWeight = FontWeight.w600,
                              double lineHeight = 16.0})
  =>
      TextStyle(
        fontFamily: Fonts.poppinsRegular,
        fontSize: fontSize,
        fontWeight: fontWeight,
        //height: 1,//lineHeight/fontSize,
        color: color,
      );

  static TextStyle poppins16({Color color = CustomColors.maastrichtBlue,
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.w600,
    double lineHeight = 24.0})
  =>
      TextStyle(
        fontFamily: Fonts.poppinsRegular,
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: lineHeight/fontSize,
        color: color,
      );

  static TextStyle poppins24({Color color = CustomColors.maastrichtBlue,
    double fontSize = 24.0,
    double lineHeight = 32.0})
  =>
      TextStyle(
        fontFamily: Fonts.poppinsRegular,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        height: lineHeight/fontSize,
        color: color,
      );
}