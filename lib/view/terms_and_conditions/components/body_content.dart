import 'package:aura_web_app/view/terms_and_conditions/components/section_block.dart';
import 'package:aura_web_app/view/terms_and_conditions/components/side_menu_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/terms_and_conditions_controller.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widget/common_button.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({
    super.key,
  }) ;

  static const _sections = [
    'Terms',
    'Services',
    'Eligibility',
    'Subscription fees',
    'Cancellation',
    'Security',
    'Confidentiality',
    'Variation',
    'Maintenance',
    'Money back Policy',
  ];

  static const _contentHeight = 1314.0;
  // static const _sideMenuWidth = 300.0; // Specific width for SideMenuContainer
  static const _containerRadius = 15.0;
  static const _padding = 40.0;

  @override
  Widget build(BuildContext context) {
    final sectionCtrl = Get.put(TermsAndConditionsController());
    final textTheme = AppTextStyle.medium24Text.copyWith(
      color: AppColors.appWhiteColor,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.poppinsMedium,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SideMenuContainer(),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.appWhiteColor,
                      borderRadius: BorderRadius.circular(_containerRadius),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: _padding),
                    child: SingleChildScrollView(
                      controller: sectionCtrl.scrollController,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: _padding),
                           Text(
                            "Terms Of Services",
                            style:textTheme.copyWith(
                              fontSize: 48,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.poppinsMedium,
                              color: AppColors.appBlackColor
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Updated Feb 2022",
                            style: textTheme.copyWith(
                              fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.poppinsMedium,
                                color: Color(0xFF7C7C7C)
                            ),
                          ),
                          const SizedBox(height: 32),
                          ..._sections.map(SectionBlock.new),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: AppColors.appWhiteColor,
                    borderRadius: BorderRadius.circular(_containerRadius),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.email_outlined, size: 56,color: AppColors.appGradientDarkColor,),
                      const SizedBox(width: 20),
                      Text("Sent to my email",style: textTheme.copyWith(color: AppColors.appGradientDarkColor),),
                      const Spacer(),
                      CommonButton(
                        buttonName: "I Agree",
                        fontStyle: textTheme,
                        buttonColor: AppColors.appOrangeColor,
                        height: 56,
                        borderRadius: BorderRadius.circular(10),
                        onTap: (){},
                        width: 232,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}