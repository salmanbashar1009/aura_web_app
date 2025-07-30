import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/view/dashBoard/components/footer_widget.dart';
import 'package:aura_web_app/view/report_problem/components/report_form.dart';
import 'package:aura_web_app/widget/common_page_banner.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/svgImage.dart';
import '../dashBoard/components/header_widget.dart';

class ReportProblemPage extends StatelessWidget {
  const ReportProblemPage({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = AppTextStyle.extraLarge36SizeText.copyWith(
      fontFamily: FontFamily.poppinsMedium,
      fontWeight: FontWeight.w500,
      fontSize: 35,
      color: AppColors.appWhiteColor,
    );
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommonPageBanner(
                    imagePath: AppImage.report.value,
                    title: 'Report a Problem',
                    subTitle: 'We respect your thoughts',
                  ),
                  const SizedBox(height: 60),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: AppColors.appGradientDarkColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Text('Report an Issue', style: textTheme),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50),
                          child: ReportForm(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  FooterWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
