import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/view/buy/components/side_bar_tabs.dart';
import 'package:aura_web_app/view/dashBoard/components/footer_widget.dart';
import 'package:flutter/material.dart';
import '../dashBoard/components/header_widget.dart';
import 'components/tab_bar_widget.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColors.appGradientDarkColor,
            child: HeaderWidget(isLoggedIn: true, isBgWhite: false),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 60),

                  /// Tab bar widget : Popular Choices, Explore, Buy Tools
                  TabBarWidget(),
                  const SizedBox(height: 80),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: IntrinsicHeight(
                      child: Row(
                        spacing: 80,
                        children: [
                          Column(
                            children: [
                              SideBarTabs(),
                              const SizedBox(height: 60,),
                              SideBarTabs(),
                            ],
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: List.generate(4, (index) {
                                return Container(
                                  margin: const EdgeInsets.only(bottom: 50),
                                  padding: const EdgeInsets.all(40),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.appWhiteColor,
                                  ),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          AppImage.laCity.value,
                                          width: 406,
                                          height: 278,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  const FooterWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
