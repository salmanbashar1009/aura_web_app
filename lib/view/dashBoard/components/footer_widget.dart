import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    final isTablet = MediaQuery.of(context).size.width < 900;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          color: AppColors.appPrimaryDarkColor,
          padding: EdgeInsets.symmetric(
            vertical: isMobile ? 40 : 93,
            horizontal: isMobile ? 20 : 40,
          ),
          child: isMobile
              ? _buildMobileLayout()
              : isTablet
              ? _buildTabletLayout()
              : _buildDesktopLayout(),
        ),
        Container(
          height: isMobile ? 84 : 84,
          width: double.infinity,
          color: AppColors.appBlackColor,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: isMobile ? 12 : 40),
          child: Text(
            "All right reserved by Aura Properties | Designed and developed by Aura IT Solution",
            style: AppTextStyle.medium20Text.copyWith(
              fontSize: isMobile ? 12 : 20,
              color: AppColors.appWhiteColor,
              fontFamily: FontFamily.poppinsSemiBold,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Aura properties",
                style: AppTextStyle.extraLarge48SizeText.copyWith(
                  color: AppColors.appWhiteColor,
                  fontFamily: FontFamily.poppinsSemiBold,
                ),
              ),
              const SizedBox(height: 33),
              Text(
                "we guarantee that the property we sell will\nmake our customer happy because we are\nvery concerned about our customer\nsatisfaction",
                style: AppTextStyle.medium20Text.copyWith(
                  color: AppColors.appWhiteColor,
                  fontFamily: FontFamily.poppinsMedium,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const SizedBox(width: 40),
        Expanded(
          flex: 2,
          child: _buildCompanyColumn(),
        ),
        const SizedBox(width: 40),
        Expanded(
          flex: 2,
          child: _buildServicesColumn(),
        ),
        const SizedBox(width: 40),
        Expanded(
          flex: 2,
          child: _buildContactColumn(),
        ),
      ],
    );
  }

  Widget _buildTabletLayout() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Aura properties",
                    style: AppTextStyle.extraLarge36SizeText.copyWith(
                      color: AppColors.appWhiteColor,
                      fontFamily: FontFamily.poppinsSemiBold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "we guarantee that the property we sell will make our customer happy because we are very concerned about our customer satisfaction",
                    style: AppTextStyle.medium18Text.copyWith(
                      color: AppColors.appWhiteColor,
                      fontFamily: FontFamily.poppinsMedium,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              flex: 1,
              child: _buildCompanyColumn(),
            ),
            const SizedBox(width: 30),
            Expanded(
              flex: 1,
              child: _buildServicesColumn(),
            ),
          ],
        ),
        const SizedBox(height: 30),
        _buildContactColumn(),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Aura properties",
          style: AppTextStyle.large28Text.copyWith(
            color: AppColors.appWhiteColor,
            fontFamily: FontFamily.poppinsSemiBold,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "we guarantee that the property we sell will make our customer happy because we are very concerned about our customer satisfaction",

          style: AppTextStyle.small16Text.copyWith(
            color: AppColors.appWhiteColor,
            fontFamily: FontFamily.poppinsMedium,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 30),
        _buildCompanyColumn(),
        const SizedBox(height: 30),
        _buildServicesColumn(),
        const SizedBox(height: 30),
        _buildContactColumn(),
      ],
    );
  }

  Widget _buildCompanyColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Company",
          style: AppTextStyle.medium24Text.copyWith(
            color: AppColors.appWhiteColor,
            fontFamily: FontFamily.poppinsSemiBold,
          ),
        ),
        const SizedBox(height: 15),
        _buildFooterLink("About Us"),
        _buildFooterLink("Contact Us"),
        _buildFooterLink("Privacy Policy"),
        _buildFooterLink("T & C"),
        _buildFooterLink("Report a problem"),
        _buildFooterLink("Feedbacks"),
      ],
    );
  }

  Widget _buildServicesColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Services",
          style: AppTextStyle.medium24Text.copyWith(
            color: AppColors.appWhiteColor,
            fontFamily: FontFamily.poppinsSemiBold,
          ),
        ),
        const SizedBox(height: 15),
        _buildFooterLink("Buy Properties"),
        _buildFooterLink("Rent Properties"),
        _buildFooterLink("Rent A PG"),
        _buildFooterLink("Sell Properties"),
      ],
    );
  }

  Widget _buildContactColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Contact Us",
          style: AppTextStyle.medium24Text.copyWith(
            color: AppColors.appWhiteColor,
            fontFamily: FontFamily.poppinsSemiBold,
          ),
        ),
        const SizedBox(height: 15),
        _buildFooterLink("+91 1234567890"),
        _buildFooterLink("Contact Us"),
        _buildFooterLink("info@aurproperties.com"),
        Text(
          "12c/2 , Hill coloy road, Main city , Bangalore",
          style: AppTextStyle.small16Text.copyWith(
            color: AppColors.appWhiteColor,
            fontFamily: FontFamily.poppinsMedium,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          "Connect",
          style: AppTextStyle.medium24Text.copyWith(
            color: AppColors.appWhiteColor,
            fontFamily: FontFamily.poppinsSemiBold,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            SvgPicture.asset(SvgImage.facebook.value),
            const SizedBox(width: 20),
            SvgPicture.asset(SvgImage.twitter.value),
          ],
        ),
      ],
    );
  }

  Widget _buildFooterLink(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        text,
        style: AppTextStyle.small16Text.copyWith(
          color: AppColors.appWhiteColor,
          fontFamily: FontFamily.poppinsMedium,
        ),
      ),
    );
  }
}
/*
import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 563,
          width: double.infinity,
          color: AppColors.appPrimaryDarkColor,
          padding: EdgeInsets.only(top: 93),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Aura properties",
                      style: AppTextStyle.h48(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsSemiBold,
                      ),
                    ),
                    SizedBox(height: 33),
                    Text(
                      "we guarantee that the property we sell will\nmake our customer happy because we are\nvery concerned about our costmer\nsatisfaction",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 80),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Company",
                      style: AppTextStyle.h28(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsSemiBold,
                      ),
                    ),
                    SizedBox(height: 33),
                    Text(
                      "About Us",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "Contact Us",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "Privacy Policy",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "T & C",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "Report a problem",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "Feedbacks",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Services",
                      style: AppTextStyle.h28(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsSemiBold,
                      ),
                    ),
                    SizedBox(height: 28),
                    Text(
                      "Buy Properties",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "Rent Properties",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "Rent A PG",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "Sell Properties",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Us",
                      style: AppTextStyle.h28(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsSemiBold,
                      ),
                    ),
                    SizedBox(height: 28),
                    Text(
                      "+91 1234567890",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "Contact Us",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "info@aurproperties.com",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "12c/2 , Hill coloy road,\nMain city , Bangalore",
                      style: AppTextStyle.h20(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsMedium,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      "Connect",
                      style: AppTextStyle.h28(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsSemiBold,
                      ),
                    ),
                    SizedBox(height: 28),
                    Row(
                      children: [
                        SvgPicture.asset(SvgImage.facebook.value),
                        SizedBox(width: 33),
                        SvgPicture.asset(SvgImage.twitter.value),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 84,
          width: double.infinity,
          color: AppColors.appBlackColor,
          alignment: Alignment.center,
          child: Text(
            "All right reserved by Aura Properties| Designed and developed by Aura IT Sollution",
            style: AppTextStyle.h20(
              color: AppColors.appWhiteColor,
              fontFamily: FontFamily.poppinsSemiBold,
            ),
          ),
        ),
      ],
    );
  }
}
*/
