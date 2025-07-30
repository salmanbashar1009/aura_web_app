import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/widget/common_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyDialog extends StatelessWidget {
  const VerifyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.effect.value),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.1,
              vertical: 40,
            ),
            child: Container(
              padding: const EdgeInsets.all(49),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.appBorderColor, width: 1),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    color: AppColors.appBlackColor.withOpacity(0.25),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Verify",
                      style: AppTextStyle.large28Text.copyWith(
                        color: AppColors.appGradientDarkColor,
                        fontFamily: FontFamily.poppinsSemiBold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 49),
                  // Email Field
                  TextFormField(
                    cursorColor: const Color(0xff7C7C7C),
                    style: AppTextStyle.small16Text.copyWith(
                      color: const Color(0xff7C7C7C),
                      fontFamily: FontFamily.poppinsRegular,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter OTP",
                      hintStyle: AppTextStyle.small16Text.copyWith(
                        color: const Color(0xff7C7C7C),
                        fontFamily: FontFamily.poppinsRegular,
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff7C7C7C)),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff7C7C7C)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 39),
                  // Next Button
                  Center(
                    child: CommonButton(
                      onTap: (){

                      },
                      height: 62,
                      width: 374,
                      buttonColor: AppColors.appGradientDarkColor,
                      buttonName: "Next",
                      fontStyle: AppTextStyle.medium22Text.copyWith(
                        color: AppColors.appWhiteColor,
                        fontFamily: FontFamily.poppinsSemiBold,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 39),
                  // Next Button
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'You will recieve otp within\t\t',
                          style: AppTextStyle.small14Text.copyWith(
                            color: AppColors.appBlackColor,
                            fontFamily: FontFamily.poppinsRegular,
                          ),
                        ),
                        TextSpan(
                          text: '05:00\t\t',
                          style: AppTextStyle.small14Text.copyWith(
                            color: AppColors.appGradientDarkColor,
                            fontFamily: FontFamily.poppinsRegular,
                          ),
                        ),
                        TextSpan(
                          text: 'min',
                          style: AppTextStyle.small14Text.copyWith(
                            color: AppColors.appBlackColor,
                            fontFamily: FontFamily.poppinsRegular,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 39),
                  Text(
                    "Did not recieved OTP ?",
                    style: AppTextStyle.medium20Text.copyWith(
                      color: AppColors.appBlackColor,
                      fontFamily: FontFamily.poppinsRegular,
                    ),
                  ),
                  const SizedBox(height: 35),
                  Text(
                    "Send Again",
                    style: AppTextStyle.medium20Text.copyWith(
                      color: AppColors.appGradientDarkColor,
                      fontFamily: FontFamily.poppinsMedium,
                    ),
                  ),


                  // Divider
                  // _buildOrDivider(),
                  // const SizedBox(height: 20),
                  // // Social Login Buttons
                  // _buildSocialLoginButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
