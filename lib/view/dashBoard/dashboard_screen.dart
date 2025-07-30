import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/view/dashBoard/components/featured_project.dart';
import 'package:aura_web_app/view/dashBoard/components/footer_widget.dart';
import 'package:aura_web_app/view/dashBoard/components/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/cities_widget.dart';
import 'components/dashboard_banner.dart';
import 'components/property_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: AppColors.appBgColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DashboardBanner(),
                    ),
                    SizedBox(height: 72),
                    Text(
                      "GET STARTED WITH EXPLORING REAL ESTATE OPTIONS",
                      style: AppTextStyle.large28Text.copyWith(
                        color: AppColors.appDarkGrayColor,
                        fontFamily: FontFamily.poppinsSemiBold,
                      ),
                    ),
                    SizedBox(height: 114),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PropertyCard(
                            image: AppImage.buyingHome.value,
                            title: "Buying a Home",
                          ),
                          SizedBox(width: 60),
                          PropertyCard(
                            image: AppImage.rentingHome.value,
                            title: "Renting as Home",
                          ),
                          SizedBox(width: 60),
                          PropertyCard(
                            image: AppImage.commercialPlaces.value,
                            title: "Commercial places",
                          ),
                          SizedBox(width: 60),
                          PropertyCard(
                            image: AppImage.sellProperties.value,
                            title: "Sell/Rent Properties",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 114),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          AppImage.dreamHome.value,
                          height: 884,
                          width: 614,
                        ),
                        SizedBox(width: 60),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "With Our Help You Can Find\nYour Dream Home",
                                style: AppTextStyle.extraLarge55SizeText.copyWith(
                                  color: AppColors.appPrimaryDarkColor,
                                  fontFamily: FontFamily.poppinsMedium,
                                ),
                              ),

                              Text(
                                "we guarantee that the property we sell will make our\ncustomer happy because we are very concerned\nabout our costmer satisfaction",
                                style: AppTextStyle.large28Text.copyWith(
                                  color: AppColors.appDarkGrayColor,
                                  fontFamily: FontFamily.poppinsMedium,
                                ),
                              ),
                              SizedBox(height: 33),
                              Text(
                                "10k +",
                                style: AppTextStyle.large28Text.copyWith(
                                  fontSize: 64,
                                  color: AppColors.appGradientDarkColor,
                                  fontFamily: FontFamily.poppinsMedium,
                                ),
                              ),
                              Text(
                                "Happy and satisfied customers",
                                style: AppTextStyle.large28Text.copyWith(
                                  color: AppColors.appDarkGrayColor,
                                  fontFamily: FontFamily.poppinsMedium,
                                ),
                              ),

                              SizedBox(height: 33),
                              Text(
                                "260k +",
                                style: AppTextStyle.extraLarge55SizeText.copyWith(
                                  fontSize: 64,
                                  color: AppColors.appGradientDarkColor,
                                  fontFamily: FontFamily.poppinsMedium,
                                ),
                              ),
                              Text(
                                "the properties we provide",
                                style: AppTextStyle.large28Text.copyWith(
                                  color: AppColors.appDarkGrayColor,
                                  fontFamily: FontFamily.poppinsMedium,
                                ),
                              ),

                              SizedBox(height: 33),
                              Text(
                                "430 +",
                                style: AppTextStyle.extraLarge55SizeText.copyWith(
                                  fontSize: 64,
                                  color: AppColors.appGradientDarkColor,
                                  fontFamily: FontFamily.poppinsMedium,
                                ),
                              ),
                              Text(
                                "Afiiliated builders and house owners",
                                style: AppTextStyle.large28Text.copyWith(
                                  color: AppColors.appDarkGrayColor,
                                  fontFamily: FontFamily.poppinsMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 114),
                    FeaturedProject(),
                    SizedBox(height: 151),
                    CitiesWidget(),

                    SizedBox(height: 151),
                    Container(
                      height: 213,
                      padding: EdgeInsets.symmetric(
                        horizontal: 68,
                        vertical: 33,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffEDD8A2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(  mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(  mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Post Your Prorerties for Free",
                                    style: AppTextStyle.extraLarge48SizeText.copyWith(
                                      color: AppColors.appDarkGrayColor,
                                      fontFamily: FontFamily.poppinsSemiBold
                                    ),
                                  ),   Text(
                                    " Free",
                                    style: AppTextStyle.extraLarge48SizeText.copyWith(
                                      color: AppColors.appOrangeColor,
                                      fontFamily: FontFamily.poppinsSemiBold
                                    ),
                                  ),
                                ],
                              ),

                              Text(
                                "List your property with us and get genuine leads",
                                style: AppTextStyle.large32Text.copyWith(
                                  color: AppColors.appDarkGrayColor,
                                  fontFamily: FontFamily.poppinsMedium
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 81,
                            width: 296,
                            decoration: BoxDecoration(
                              color: AppColors.appOrangeColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Post Property",
                                    style: AppTextStyle.medium20Text.copyWith(
                                      color: AppColors.appWhiteColor,
                                      fontFamily: FontFamily.poppinsMedium,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                    height: 31,
                                    width: 61,
                                    decoration: BoxDecoration(
                                      color: AppColors.appWhiteColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Free",
                                        style: AppTextStyle.small14Text.copyWith(
                                          fontFamily: FontFamily.poppinsMedium,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 204),
                    FooterWidget(),
                  ],
                ),
              ),
            ),
            // FooterWidget()
          ],
        ),
      );
    });
  }
}


