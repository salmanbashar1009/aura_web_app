import 'package:aura_web_app/global_variable.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/widget/common_button.dart';

import '../../../helper/routes_helper.dart';

class LoginDialog extends StatelessWidget {
  const LoginDialog({super.key});

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Login Form Card
                _buildLoginFormCard(context),
                // Sign Up Prompt
                _buildSignUpPrompt(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginFormCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(49),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border.all(
          color: AppColors.appBorderColor,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: AppTextStyle.large28Text.copyWith(
              color: AppColors.appGradientDarkColor,
              fontFamily: FontFamily.poppinsSemiBold,
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
              hintText: "Enter email address or phone number",
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
                Get.offAndToNamed(Routes.dashBoardPage.value);
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
          // Divider
          _buildOrDivider(),
          const SizedBox(height: 20),
          // Social Login Buttons
          _buildSocialLoginButtons(context),
        ],
      ),
    );
  }

  Widget _buildOrDivider() {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColors.appBorderColor,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Text(
            "or login with",
            style: AppTextStyle.small14Text.copyWith(
              fontFamily: FontFamily.poppinsRegular,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.appBorderColor,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  Widget _buildSocialLoginButtons(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: _buildSocialButton(
              icon: SvgImage.google.value,
              label: "Google",
                context: context
            ),
          ),
          Container(
            height: 51,
            width: 1,
            color: AppColors.appBorderColor,
            margin: const EdgeInsets.symmetric(horizontal: 20),
          ),
          Expanded(
            child: _buildSocialButton(
              icon: SvgImage.facebook.value,
              label: "Facebook",
                 context: context
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton({required String icon, required String label ,required BuildContext context}) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon, height: 25),
           SizedBox(width: Breakpoints.isDesktop(context) ? 8 :0),
          Breakpoints.isDesktop(context) ? Text(
            label,
            style: AppTextStyle.small14Text.copyWith(
              fontFamily: FontFamily.poppinsRegular,
            ),
          ) : SizedBox(),
        ],
      ),
    );
  }

  Widget _buildSignUpPrompt(BuildContext context) {
    return Container(
      height: 153,
      decoration: BoxDecoration(
        color: const Color(0xffEFEFEF),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        border: Border.all(
          color: AppColors.appBorderColor,
          width: 1,
        ),
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "New to Aura Properties?\t\t",
                style: AppTextStyle.medium20Text.copyWith(
                  fontFamily: FontFamily.poppinsMedium,
                  fontSize: Breakpoints.isDesktop(context) ? 20 : 16,

                ),
              ),
              TextSpan(
                text: "Sign Up !",
                style: AppTextStyle.medium20Text.copyWith(
                  fontSize: Breakpoints.isDesktop(context) ? 20 : 18,
                  color: AppColors.appGradientDarkColor,
                  fontFamily: FontFamily.poppinsMedium,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.offAndToNamed(Routes.signUpPage.value);
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }


}
