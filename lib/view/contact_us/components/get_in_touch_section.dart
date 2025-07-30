import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/svgImage.dart';
import '../../../utils/text_styles.dart';
import '../../../widget/common_button.dart';

class GetInTouchSection extends StatelessWidget {
  const GetInTouchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 40),
      decoration: BoxDecoration(
        color: AppColors.appWhiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get in Touch',
            style: AppTextStyle.extraLarge48SizeText.copyWith(
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.poppinsMedium,
              fontSize: 45,
            ),
          ),
          const SizedBox(height: 16),
          IntrinsicHeight(
            child: Row(
              children: [
                /// this image of map will be replaced with the dynamic google map package
                Expanded(
                  child: Image.asset(AppImage.map.value, fit: BoxFit.contain),
                ),
                // map image
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildTextField(hintText: 'First Name'),
                      buildTextField(hintText: 'Last Name'),
                      buildTextField(hintText: 'Email'),
                      buildTextField(hintText: 'Phone No'),
                      buildTextField(hintText: 'Message',maxLine: 4),
                      CommonButton(
                        buttonName: "Request Info",
                      )

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

  Widget buildTextField({
    required String hintText,
    int? maxLine,
    TextEditingController? controller,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.small16Text.copyWith(
          fontWeight: FontWeight.w500,
          fontFamily: FontFamily.poppinsMedium,
          color: const Color(0xFFBBBBBB),
        ),
        isDense: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFFCCCCCC)),
            borderRadius: BorderRadius.circular(5)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.appGradientDarkColor),
            borderRadius: BorderRadius.circular(5)
        ),
      ),
    );
  }
}
