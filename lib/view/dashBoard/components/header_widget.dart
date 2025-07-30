import 'package:aura_web_app/global_variable.dart';
import 'package:aura_web_app/helper/routes_helper.dart';
import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/widget/common_button.dart' show CommonButton;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({super.key, this.isLoggedIn = false, this.isBgWhite = true });

  final bool? isLoggedIn;
  final bool? isBgWhite;

  final navItems = ["Home", "Buy", "Sell", "Rent"];
  RxString menuValue = 'Home'.obs;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
      child: Row(
        children: [
          Text(
            "Aura Properties",
            style: AppTextStyle.extraLarge36SizeText.copyWith(
              color: isBgWhite == false ? AppColors.appWhiteColor : AppColors.appGradientDarkColor,
              fontFamily: FontFamily.poppinsBold,
            ),
          ),
          Spacer(),
          Breakpoints.isTablet(context) || Breakpoints.isMobile(context)
              ? DropdownButton(
            value: menuValue.value,
            icon: const Icon(Icons.menu),
            dropdownColor: Colors.white,
            items: navItems.map((String item) {
              return DropdownMenuItem(value: item, child: Text(item));
            }).toList(),
            onChanged: (String? newValue) {
              menuValue.value = newValue!;
            },
          ): Expanded(
            child: SizedBox(
              width: 300, // or a fixed width like 1200
              child: Row(
                children: navItems
                    .map((item) => Expanded(
                  child: Text(
                    item,
                    style: AppTextStyle.medium20Text.copyWith(
                      color: isBgWhite == false ? AppColors.appWhiteColor : AppColors.appPrimaryDarkColor,
                      fontFamily: FontFamily.poppinsMedium,
                    ),
                  ),
                ))
                    .toList(),
              ),
            ),
          )
          ,
          CommonButton(
            borderColor: AppColors.appOrangeColor,
            height: 55,
            width: 232,
            buttonName: "Post Property",
            buttonColor: AppColors.appOrangeColor,
            borderRadius: BorderRadius.circular(20),
            fontStyle:  AppTextStyle.medium24Text.copyWith(color: AppColors.appWhiteColor,fontFamily: FontFamily.poppinsMedium,),
          ),
          SizedBox(width: 60,),
          isLoggedIn == true ?  SizedBox.shrink() : CommonButton(
            // borderColor: AppColors.appOrangeColor,
            onTap: () {
              Get.toNamed(Routes.loginPage.value);
            },
            height: 55,
            width: 188,
            buttonName: "Login",
            buttonColor: AppColors.appGradientDarkColor,
            borderRadius: BorderRadius.circular(20),
            fontStyle:  AppTextStyle.medium24Text.copyWith(color: AppColors.appWhiteColor,fontFamily: FontFamily.poppinsMedium,),
          )
        ],
      ),
    );
  }
}
