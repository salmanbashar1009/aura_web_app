import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/text_styles.dart';

class CommonPageBanner extends StatelessWidget {
  const CommonPageBanner({super.key,required this.imagePath,this.title,this.subTitle});

  final String imagePath;
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover)
      ),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.appBlack50,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title ?? '',style: AppTextStyle.extraLarge55SizeText.copyWith(
              color: AppColors.appWhiteColor,
              fontFamily: FontFamily.poppinsMedium,
            ),),
            // const SizedBox(height: 40,),
            Text(subTitle ?? '',style: AppTextStyle.extraLarge36SizeText.copyWith(
              color: AppColors.appWhiteColor,
              fontSize: 30,
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.poppinsRegular,
            ),),
          ],
        ),
      ),
    );
  }
}
