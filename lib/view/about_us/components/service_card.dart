import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/svgImage.dart';
import '../../../utils/text_styles.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key, this.title, this.subTitle, required this.imagePath,
  });

  final String? title;
  final String? subTitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 398,
      height: 398,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath))
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withAlpha(100)
                ]
            )
        ),
        child: Text(title ?? '',style: AppTextStyle.medium24Text.copyWith(
            fontFamily: FontFamily.poppinsMedium,
            fontWeight: FontWeight.w500,
            color: AppColors.appWhiteColor
        ),),
      ),
    );
  }
}
