import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/text_styles.dart';

class FindUsSection extends StatelessWidget {
  const FindUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 40),
      decoration: BoxDecoration(
        color: AppColors.appWhiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'How to Find Us',
            style: AppTextStyle.extraLarge48SizeText.copyWith(
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.poppinsMedium,
              fontSize: 45,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '''If you have any questions, just fill in the contact form, and we will answer you shortly. If you are living nearby, come visit Aura Properties at one of our comfortable offices.''',
            softWrap: true,
            maxLines: 10,
            style: AppTextStyle.medium18Text.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.poppinsRegular,
            ),
          ),
          const SizedBox(height: 34),
          Text(
            'Headquarters',
            style: AppTextStyle.medium24Text.copyWith(
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.poppinsMedium,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '''4/125A, South Car Street, Chakrata Road,
DehraDun, Delhi.
Telephone: 011 5381 0595
Email: auraproperties@gmail.com''',
            softWrap: true,
            maxLines: 10,
            style: AppTextStyle.medium18Text.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.poppinsRegular,
            ),
          ),
          const SizedBox(height: 34),
          Text(
            'Support Centre',
            style: AppTextStyle.medium24Text.copyWith(
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.poppinsMedium,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '''4/125A, South Car Street, Chakrata Road,
DehraDun, Delhi.
Telephone: 011 5381 0595
Email: auraproperties@gmail.com''',
            softWrap: true,
            maxLines: 10,
            style: AppTextStyle.medium18Text.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.poppinsRegular,
            ),
          ),
        ],
      ),
    );
  }
}
