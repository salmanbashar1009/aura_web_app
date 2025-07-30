import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/view/dashBoard/components/footer_widget.dart';
import 'package:aura_web_app/view/dashBoard/components/header_widget.dart';
import 'package:aura_web_app/widget/common_button.dart';
import 'package:flutter/material.dart';

import '../../utils/svgImage.dart';
import '../../widget/common_page_banner.dart';
import 'components/find_us_section.dart';
import 'components/get_in_touch_section.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

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
                children: [
                  CommonPageBanner(
                    imagePath: AppImage.contactUs.value,
                    title: 'Contact Us',
                    subTitle:
                        'Communication is the lifeline of any relationship',
                  ),
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(flex: 6, child: FindUsSection()),
                          const SizedBox(width: 20),
                          Expanded(flex: 10, child: GetInTouchSection()),
                        ],
                      ),
                    ),
                  ),
                  FooterWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

