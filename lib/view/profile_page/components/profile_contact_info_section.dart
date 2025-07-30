import 'package:aura_web_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/text_styles.dart';

class ProfileContactInfoSection extends StatelessWidget {
  const ProfileContactInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 880,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text(
            "Aura Properties",
            style: AppTextStyle.extraLarge36SizeText.copyWith(
              fontFamily: FontFamily.poppinsMedium,
              fontWeight: FontWeight.w500,
              fontSize: 35
            ),
          ),
           Text(
            "4/125A, South Car Street, Chakrata Road, DehraDun, Delhi.",
            style: AppTextStyle.medium20Text.copyWith(
           color: AppColors.appTextGrayColor
           ),
          ),
          const SizedBox(height: 60),
          Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                keyText(text: 'Phone'),
                keyText(text: 'Mobile'),
                keyText(text: 'Fax'),
                keyText(text: 'Email'),
                keyText(text: 'Website'),
              ],
            ),
            const SizedBox(width: 49),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                valueText(text: '011 5381 0595'),
                valueText(text: '+91 95000 95000'),
                valueText(text: '011 123 4567'),
                valueText(text: 'auraproperties@gmail.com'),
                valueText(text: 'auraproperties.in'),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                keyText(text: 'Properties Listed'),
                keyText(text: 'Managers'),
                keyText(text: 'License'),
                keyText(text: 'Tax Number'),
                keyText(text: 'Languages'),
              ],
            ),
            const SizedBox(width: 49),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                valueText(text: '100+'),
                valueText(text: '25'),
                valueText(text: 'Dt1234'),
                valueText(text: 'ABCDE1234F'),
                valueText(text: '12+'),
              ],
            ),

          ],)
        ],
      ),
    );
  }
  Widget keyText({required String text}) {
    final textStyle = AppTextStyle.medium20Text.copyWith(
        color: AppColors.appTextGrayColor
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(text, style:textStyle.copyWith(color: AppColors.appBlackColor) ),
    );
  }
  
  Widget valueText({required String text}) {
    final textStyle = AppTextStyle.medium20Text.copyWith(
        color: AppColors.appTextGrayColor
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(text, style: textStyle),
    );
  }
}

