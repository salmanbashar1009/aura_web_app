import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonButton extends StatelessWidget {
  final String? buttonName;
  final Color? buttonColor;
  final Color? textColor;
  final double? height;
  final Color? borderColor;
  final GestureTapCallback? onTap;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle? fontStyle;
  final List<BoxShadow>? boxShadow;
  const CommonButton({this.fontStyle,this.width,this.height,this.onTap,this.borderColor,this.textColor,this.buttonColor,this.buttonName,this.boxShadow,super.key, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? Get.height*0.067,
        width: width,
        decoration: BoxDecoration(
            color: buttonColor ?? AppColors.appGradientDarkColor,
            borderRadius: borderRadius ?? BorderRadius.circular(5),
          boxShadow: boxShadow ?? [
            BoxShadow()
          ],
          border: Border.all(color: borderColor ?? Colors.transparent,width: 1)
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(buttonName ?? "",style: fontStyle ?? AppTextStyle.small16Text.copyWith(color: textColor ?? AppColors.appWhiteColor,fontFamily: FontFamily.poppinsMedium,fontWeight: FontWeight.w500),),
          ),
        ),
      ),
    );
  }
}
