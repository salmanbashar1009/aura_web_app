import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/material.dart';

class DreamHomeSection extends StatelessWidget {
  const DreamHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        bool isMobile = width < 600;
        bool isTablet = width >= 600 && width < 1024;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: isMobile
              ? Column(
            children: [
              Image.asset(
                AppImage.dreamHome.value,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 30),
              _DreamHomeTextContent(isMobile: true),
            ],
          )
              : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppImage.dreamHome.value,
                height: isTablet ? 500 : 884,
                width: isTablet ? 350 : 614,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 50),
              Expanded(
                child: _DreamHomeTextContent(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _DreamHomeTextContent extends StatelessWidget {
  final bool isMobile;
  const _DreamHomeTextContent({this.isMobile = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
      isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          "With Our Help You Can Find\nYour Dream Home",
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
          style: AppTextStyle.extraLarge55SizeText.copyWith(
            color: AppColors.appPrimaryDarkColor,
            fontFamily: FontFamily.poppinsMedium,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "we guarantee that the property we sell will make our\ncustomer happy because we are very concerned\nabout our costmer satisfaction",
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
          style: AppTextStyle.large28Text.copyWith(
            color: AppColors.appDarkGrayColor,
            fontFamily: FontFamily.poppinsMedium,
          ),
        ),
        const SizedBox(height: 33),
        _statItem("10k +", "Happy and satisfied customers", isMobile),
        _statItem("260k +", "the properties we provide", isMobile),
        _statItem("430 +", "Afiiliated builders and house owners", isMobile),
      ],
    );
  }

  Widget _statItem(String number, String label, bool center) {
    return Column(
      crossAxisAlignment: center ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: AppTextStyle.extraLarge55SizeText.copyWith(
            fontSize: 64,
            color: AppColors.appGradientDarkColor,
            fontFamily: FontFamily.poppinsMedium,
          ),
        ),
        Text(
          label,
          textAlign: center ? TextAlign.center : TextAlign.left,
          style: AppTextStyle.large28Text.copyWith(
            color: AppColors.appDarkGrayColor,
            fontFamily: FontFamily.poppinsMedium,
          ),
        ),
        const SizedBox(height: 33),
      ],
    );
  }
}

