import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/view/dashBoard/components/footer_widget.dart';
import 'package:aura_web_app/view/profile_page/components/profile_contact_info_section.dart';
import 'package:aura_web_app/widget/common_page_banner.dart';
import 'package:flutter/material.dart';
import '../dashBoard/components/header_widget.dart';
import 'components/managers_carousel.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.find<ProfileController>();
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CommonPageBanner(
                    imagePath: AppImage.houseTop.value,
                    title: 'Aura Profile',
                    subTitle: 'You Dream it, We make it',
                  ),
                  const SizedBox(height: 60),
                  ProfileContactInfoSection(),
                  const SizedBox(height: 60),
                  ManagerSlider(),
                  const SizedBox(height: 47),
                  Text(
                    'Joining our professional team \nto start selling & Buying your Properties',
                    style: AppTextStyle.extraLarge36SizeText.copyWith(
                      fontFamily: FontFamily.poppinsMedium,
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 47),
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
