import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/svgImage.dart';
import '../../../utils/text_styles.dart';
import '../../../widget/common_button.dart';
import 'buy_rent_pg_tabs.dart';

class DashboardBanner extends StatelessWidget {
  const DashboardBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 927,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              AppImage.bg.value,
              height: 860.91,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 240,
            bottom: 180,
            right:MediaQuery.of(context).size.width / 2 - 60,
            child: BuyRentPgTabs(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 187,
              width: Get.width / 1.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(26),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.appBlackColor
                        .withOpacity(0.26),
                    blurRadius: 9,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              /// all residential search container
              child: Padding(
                padding: const EdgeInsets.all(33.0),
                child: Row(
                  children: [
                    Text(
                      "All residentials",
                      style: AppTextStyle.medium20Text.copyWith(
                        color: AppColors.appDarkGrayColor,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.appDarkGrayColor,
                      size: 40,
                    ),
                    Container(
                      height: double.infinity,
                      width: 1,
                      margin: EdgeInsets.only(
                        left: 60,
                        right: 60,
                      ),
                      color: AppColors.appBlackColor,
                    ),
                    Expanded(
                      child: TextField(
                        style: AppTextStyle.medium20Text.copyWith(
                          color:
                          AppColors.appTextGrayColor,
                          fontFamily:
                          FontFamily.poppinsRegular,
                        ),
                        cursorColor:
                        AppColors.appTextGrayColor,
                        decoration: InputDecoration(
                          hintText:
                          "Search Properties , location , project/society",
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color:
                            AppColors
                                .appTextGrayColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 60),
                    SvgPicture.asset(
                      SvgImage.location.value,
                    ),
                    SizedBox(width: 13),
                    Text(
                      "Near Me",
                      style: AppTextStyle.medium20Text.copyWith(
                        color:
                        AppColors
                            .appGradientDarkColor,
                        fontFamily:
                        FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(width: 33),
                    CommonButton(
                      width: 187,
                      height: 74,
                      buttonColor:
                      AppColors.appGradientDarkColor,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      buttonName: "Search",
                      fontStyle: AppTextStyle.medium22Text.copyWith(
                        color: AppColors.appWhiteColor,
                        fontFamily:
                        FontFamily.poppinsSemiBold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 150,
            child: Column(
              children: [
                Text("Everyone can\nown a house", style: AppTextStyle.extraLarge48SizeText?.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 64,
                  color: AppColors.appWhiteColor,
                  fontFamily: FontFamily.poppinsBold,
                ),),
                Text('''Find comfort in the house with us , want ro fins a home ? \nWe are ready to help you with your need''',style: AppTextStyle.small16Text?.copyWith(
                  color: AppColors.appTextLightGrayColor,
                  fontFamily: FontFamily.poppinsRegular,
                ),)
              ],
            ),
          ),

        ],
      ),
    );
  }
}