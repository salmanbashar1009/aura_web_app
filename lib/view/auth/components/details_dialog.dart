import 'package:aura_web_app/global_variable.dart';
import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsDialog extends StatelessWidget {
  const DetailsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Breakpoints.isDesktop(context) ? Get.width * 0.45 : double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.house.value),
            fit: BoxFit.cover,
          ),
        ),
        child:
        Breakpoints.isDesktop(context)
                ? Stack(
                  children: [
                    Container(color: AppColors.appBlackColor.withOpacity(0.43)),
                    SingleChildScrollView(
                      padding: const EdgeInsets.only(
                        top: 80.0,
                        left: 40,
                        bottom: 40,
                        right: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Things you Can Do with\nAura Properties\nAccount",
                            style: AppTextStyle.extraLarge40SizeText.copyWith(
                              color: AppColors.appWhiteColor,
                              fontFamily: FontFamily.poppinsSemiBold,
                            ),
                          ),
                          const SizedBox(height: 33),
                          _buildFeatureItem(
                            "•  Post one Single Property for FREE",
                          ),
                          _buildFeatureItem(
                            "•  Set property alerts for your requirement",
                          ),
                          _buildFeatureItem(
                            "•  Get accessed by over 1 Lakh buyers",
                          ),
                          _buildFeatureItem(
                            "•  Showcase your property as Rental, PG or for Sale",
                          ),
                          _buildFeatureItem(
                            "•  Get instant queries over Phone, Email and SMS",
                          ),
                          _buildFeatureItem(
                            "•  Performance in search & Track responses & views online",
                          ),
                          _buildFeatureItem(
                            "•  Add detailed property information & multiple photos per listing",
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                : SizedBox(),
      ),
    );
  }

  Widget _buildFeatureItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: AppTextStyle.medium18Text.copyWith(
          color: AppColors.appWhiteColor,
          fontFamily: FontFamily.poppinsSemiBold,
        ),
      ),
    );
  }
}
