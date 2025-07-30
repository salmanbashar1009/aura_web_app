import 'package:aura_web_app/global_variable.dart';
import 'package:aura_web_app/view/auth/components/details_dialog.dart';
import 'package:aura_web_app/view/auth/components/login_dialog.dart';
import 'package:aura_web_app/view/auth/components/sign_up_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/text_styles.dart';

import 'components/verify_dialog.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  // final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Breakpoints.isDesktop(context) ? LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    // Header Section
                    _buildHeader(),
                    // Main Content (Split Screen)
                    Expanded(child: _buildMainContent(context)),
                  ],
                ),
              ),
            ),
          );
        },
      ) : Column(
        children: [
          _buildHeader(),
         // LoginDialog(),
          SignUpDialog()
        ],
      ),
    );
  }

  // ======================= Widget Builders =======================
  Widget _buildHeader() {
    return Container(
      height: Get.height * 0.115,
      width: double.infinity,
      color: AppColors.appGradientDarkColor,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 66),
      child: Text(
        "Aura Properties",
        style: AppTextStyle.extraLarge36SizeText.copyWith(
          color: AppColors.appWhiteColor,
          fontFamily: FontFamily.poppinsBold,
        ),
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Left Side (Feature List)
        DetailsDialog(),
        // LoginDialog(),
        // VerifyDialog()
        VerifyDialog()
      ],
    );
  }






}