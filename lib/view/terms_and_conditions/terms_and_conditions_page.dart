import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/view/dashBoard/components/footer_widget.dart';

import 'package:aura_web_app/widget/common_page_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/terms_and_conditions_controller.dart';
import '../../utils/app_colors.dart';
import '../../utils/svgImage.dart';
import '../dashBoard/components/header_widget.dart';
import 'components/body_content.dart';
import 'components/section_block.dart';

class TermsAndConditionsPage extends StatelessWidget {
  static const _contentHeight = 1314.0;

  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final sectionCtrl = Get.put(TermsAndConditionsController());
    final textTheme = AppTextStyle.extraLarge36SizeText.copyWith(
      fontFamily: FontFamily.poppinsMedium,
      fontWeight: FontWeight.w500,
      fontSize: 35,
      color: AppColors.appWhiteColor,
    );

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
                    imagePath: AppImage.termsConditions.value,
                    title: 'Terms & Conditions',
                    subTitle: 'Safety is our first priority',
                  ),
                  const SizedBox(height: 60),
                  SizedBox(
                    height: _contentHeight,
                    child: BodyContent(),
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

