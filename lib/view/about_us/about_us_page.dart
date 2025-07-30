import 'dart:ui';

import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/view/about_us/components/goal_vision_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';
import '../../utils/svgImage.dart';
import '../../widget/common_page_banner.dart';
import '../dashBoard/components/footer_widget.dart';
import '../dashBoard/components/header_widget.dart';
import 'components/service_card.dart';

class AboutUsPage extends StatelessWidget {
   AboutUsPage({super.key});

  final List<Map<String,String>> services = [
    {
      'title': 'Presenting\nYour Property',
      'image': AppImage.presentingProperty.value,
    },
    {
      'title': 'Property\nExchange',
      'image': AppImage.propertyExchange.value,
    },
    {
      'title': 'Buying\nA Property',
      'image': AppImage.buyingProperty.value,
    },
    {
      'title': 'Renting or\nSelling',
      'image': AppImage.rentSelling.value,
    },
  ];

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommonPageBanner(
                    imagePath: AppImage.about.value,
                    title: 'About Us',
                    subTitle: 'Transparency is the key',
                  ),
                  const SizedBox(height: 40),
                  Text("We provide lovable experiment in the real estate field",
                    style: AppTextStyle.extraLarge48SizeText.copyWith(
                        fontFamily: FontFamily.poppinsMedium,
                        fontWeight: FontWeight.w500,
                        fontSize: 45
                    ),),
                  const SizedBox(height: 60),
                  GoalVisionSection(),
                  const SizedBox(height: 60),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(40),
                    color: AppColors.appBgColor,
                    child: Column(
                      children: [
                        Text('What we provide?',
                          style: AppTextStyle.extraLarge48SizeText.copyWith(
                              fontSize: 45,
                              fontFamily: FontFamily.poppinsMedium,
                              fontWeight: FontWeight.w500,
                              color: AppColors.appBlackColor
                          ),),
                        Text(
                            'Lorem Ipsum is simply dummy, Lorem Ipsum is simply dummy.',
                            style: AppTextStyle.medium20Text.copyWith(
                                fontFamily: FontFamily.poppinsMedium,
                                fontWeight: FontWeight.w500,
                                color: AppColors.appBlackColor
                            ), ),
                        const SizedBox(height: 60),
                        ScrollConfiguration(
                          behavior: ScrollConfiguration.of(context).copyWith(
                            dragDevices: {
                              PointerDeviceKind.touch,
                              PointerDeviceKind.mouse,
                            },
                          ),
                          child: SizedBox(
                            height: 400,
                            width: double.infinity,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              controller: _scrollController,
                              itemCount: services.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                    left: index == 0 ? 0 : 20,
                                  ),
                                  child: ServiceCard(
                                    title: services[index]['title']!,
                                    imagePath: services[index]['image']!,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 46),
                  Text(
                    "Joining our professional team \nto start selling & Buying your Properties ",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.extraLarge36SizeText.copyWith(
                      fontFamily: FontFamily.poppinsMedium,
                      fontWeight: FontWeight.w500,
                      fontSize:35,
                      color: AppColors.appBlackColor
                    ),
                  ),
                  const SizedBox(height: 46),
                  FooterWidget()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

