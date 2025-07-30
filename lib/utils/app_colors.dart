
import 'package:flutter/material.dart';

class AppColors {
  ///Colors Utils
  static const Color appGradientLightColor = Color(0xffDEEAFF);
  static const Color appGradientDarkColor = Color(0xff3B5CEE);
  static const Color appPrimaryLimeColor = Color(0xffF6F9FF);
  static const Color appPrimaryDarkColor = Color(0xff061F48);
  static const Color appOrangeColor = Color(0xffFF8800);
  static const Color appBlackColor = Color(0xff000000);
  static const Color appDarkGrayColor = Color(0xff565656);
  static const Color appTextGrayColor = Color(0xff6B6B6B);
  static const Color appTextLightGrayColor = Color(0xffCECACA);
  static const Color appWhiteColor = Color(0xffFFFFFF);
  static const Color appBgColor = Color(0xffF6F6F6);
  static const Color appBorderColor = Color(0xFFCDCBCB);
  static const Color appTextBlackColor = Color(0xff000000);
  static const Color appBlack50 = Color.fromRGBO(0, 0, 0, 0.5)  ;
}

class AppGradientColors {
  static final List<Color> primaryGradient = [
    const Color(0xff4C6CAD).withOpacity(0.7),
    const Color(0xff395DB6).withOpacity(0.7)
  ];
}

Map<int, Color> color = {
  050: const Color.fromRGBO(76, 108, 173, .1),
  100: const Color.fromRGBO(76, 108, 173, .2),
  200: const Color.fromRGBO(76, 108, 173, .3),
  300: const Color.fromRGBO(76, 108, 173, .4),
  400: const Color.fromRGBO(76, 108, 173, .5),
  500: const Color.fromRGBO(76, 108, 173, .6),
  600: const Color.fromRGBO(76, 108, 173, .7),
  700: const Color.fromRGBO(76, 108, 173, .8),
  2090: const Color.fromRGBO(76, 108, 173, .9),
  900: const Color.fromRGBO(76, 108, 173, 1.0),
};

MaterialColor colorCustom = MaterialColor(0xff395DB6, color);
