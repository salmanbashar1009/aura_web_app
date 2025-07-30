import 'package:aura_web_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnackBar(String message,) {

  final snackBar = GetSnackBar(
    backgroundColor: AppColors.appBlackColor,
    message: message,
    duration: const Duration(milliseconds: 1500),
  );
  Get.showSnackbar(snackBar);
}



Future<void> delay(int time) async {
  await Future.delayed(Duration(milliseconds: time), () {});
}

class Breakpoints {
  static const double mobile = 600;
  static const double tablet = 1024;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobile;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobile &&
          MediaQuery.of(context).size.width < tablet;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= tablet;
}