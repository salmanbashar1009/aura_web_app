import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  final String image;
  final String title;

  const PropertyCard({
    required this.image,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image, height: 203, width: 300),
        Text(
          title,
          style: AppTextStyle.medium20Text.copyWith(
            color: AppColors.appBlackColor,
            fontFamily: FontFamily.poppinsMedium,
          ),
        ),
      ],
    );
  }
}
