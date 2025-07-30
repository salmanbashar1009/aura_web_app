import 'package:aura_web_app/global_variable.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/widget/common_button.dart';

import '../../../helper/routes_helper.dart';

class SignUpDialog extends StatelessWidget {
  const SignUpDialog({super.key});

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
                      "Sign Up",
                      style: AppTextStyle.large28Text.copyWith(
                        color: AppColors.appGradientDarkColor,
                        fontFamily: FontFamily.poppinsSemiBold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 29),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "I am",
                      style: AppTextStyle.small16Text.copyWith(
                        color: AppColors.appBlackColor,
                      ),
                    ),
                  ),

                  const SizedBox(height: 19),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.circle_outlined, size: 10),
                              SizedBox(width: 10),
                              Text(
                                "Buyer/Owner",
                                style: AppTextStyle.small16Text.copyWith(),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Row(
                            children: [
                              Icon(Icons.circle_outlined, size: 10),
                              SizedBox(width: 10),
                              Text(
                                "Broker/Agent",
                                style: AppTextStyle.small16Text.copyWith(),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Row(
                            children: [
                              Icon(Icons.circle_outlined, size: 10),
                              SizedBox(width: 10),
                              Text(
                                "Builder",
                                style: AppTextStyle.small16Text.copyWith(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 29),
                  // Full name
                  TextFormField(
                    cursorColor: const Color(0xff7C7C7C),
                    style: AppTextStyle.small16Text.copyWith(
                      color: const Color(0xff7C7C7C),
                      fontFamily: FontFamily.poppinsRegular,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter full name",
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
                  const SizedBox(height: 21),
                  TextFormField(
                    cursorColor: const Color(0xff7C7C7C),
                    style: AppTextStyle.small16Text.copyWith(
                      color: const Color(0xff7C7C7C),
                      fontFamily: FontFamily.poppinsRegular,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter email address ",
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
                  const SizedBox(height: 21),
                  TextFormField(
                    cursorColor: const Color(0xff7C7C7C),
                    style: AppTextStyle.small16Text.copyWith(
                      color: const Color(0xff7C7C7C),
                      fontFamily: FontFamily.poppinsRegular,
                    ),
                    decoration: InputDecoration(
                      hintText: "Password ",
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
                  const SizedBox(height: 21),
                  Row(
                    children: [
                      SizedBox(
                        width: Breakpoints.isDesktop(context) ? 100 : 40,
                        child: TextFormField(
                          cursorColor: const Color(0xff7C7C7C),
                          style: AppTextStyle.small16Text.copyWith(
                            color: const Color(0xff7C7C7C),
                            fontFamily: FontFamily.poppinsRegular,
                          ),
                          decoration: InputDecoration(
                            hintText: "+91 ",
                            hintStyle: AppTextStyle.small16Text.copyWith(
                              color: AppColors.appBlackColor,
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
                      ),
                      SizedBox(width: 21),
                      Expanded(
                        child: TextFormField(
                          cursorColor: const Color(0xff7C7C7C),
                          style: AppTextStyle.small16Text.copyWith(
                            color: const Color(0xff7C7C7C),
                            fontFamily: FontFamily.poppinsRegular,
                          ),
                          decoration: InputDecoration(
                            hintText: "Phone number ",
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
                      ),
                    ],
                  ),

                  const SizedBox(height: 21),
                  // Next Button
                  Center(
                    child: CommonButton(
                      onTap: (){
                        Get.toNamed(Routes.verifyPage.value);
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
                  const SizedBox(height: 21),
                  // Next Button
                 Breakpoints.isDesktop(context) ? RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Already registered ?\t\t',
                          style: AppTextStyle.medium20Text.copyWith(
                            color: AppColors.appBlackColor,
                            fontFamily: FontFamily.poppinsMedium,
                            fontSize: Breakpoints.isDesktop(context) ? 20 : 16,
                          ),
                        ),
                        TextSpan(
                          text: 'Login Here',
                          style: AppTextStyle.medium20Text.copyWith(
                            color: AppColors.appGradientDarkColor,
                            fontFamily: FontFamily.poppinsMedium,
                            fontSize: Breakpoints.isDesktop(context) ? 20 : 18,

                          ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.offAndToNamed(Routes.loginPage.value);
                              }

                        ),
                      ],
                    ),
                  ) : Column(
                     children: [
                       Text(
                        'Already registered ?',

                         style: AppTextStyle.medium20Text.copyWith(
                           color: AppColors.appBlackColor,
                           fontFamily: FontFamily.poppinsMedium,
                           fontSize: Breakpoints.isDesktop(context) ? 20 : 16,
                         ),
                       ),
                       GestureDetector(
                         onTap: (){
                           Get.offAndToNamed(Routes.loginPage.value);
                         },
                         child: Text(
                                              'Login Here',
                           style: AppTextStyle.medium20Text.copyWith(
                             color: AppColors.appGradientDarkColor,
                             fontFamily: FontFamily.poppinsMedium,
                             fontSize: Breakpoints.isDesktop(context) ? 20 : 18,
                           ),
                         ),
                       ),
                     ],
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
