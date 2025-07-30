import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/svgImage.dart';
import '../../../utils/text_styles.dart';

class GoalVisionSection extends StatelessWidget {
  const GoalVisionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle35 = AppTextStyle.extraLarge36SizeText.copyWith(
        fontFamily: FontFamily.poppinsMedium,
        fontWeight: FontWeight.w500,
        fontSize: 35
    );

    final textStyle20 = AppTextStyle.medium20Text.copyWith(
      fontFamily: FontFamily.poppinsMedium,
      fontWeight: FontWeight.w500,
    );
    return SizedBox(
      width: 1200,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(AppImage.goal.value,fit: BoxFit.contain,width: 177,height: 234,),
                  const SizedBox(height: 55),
                  Text("Our Goal",style: textStyle35,),
                  const SizedBox(height: 24),
                  Text(''' It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software.''',
                    textAlign: TextAlign.center,
                    style: textStyle20,),

                ],
              ),
            ),
            const SizedBox(width: 200,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImage.vision.value,fit: BoxFit.contain,width: 101,height: 275,),
                  const SizedBox(height: 55),
                  Text("Our Vision",style: textStyle35,),
                  const SizedBox(height: 24),
                  Text(''' It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software.''',
                    textAlign: TextAlign.center,
                    style: textStyle20,),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
