import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/view/dashBoard/components/footer_widget.dart';
import 'package:flutter/material.dart';
import '../dashBoard/components/header_widget.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              color: AppColors.appGradientDarkColor,
              child: HeaderWidget(isLoggedIn: true,isBgWhite: false,)),
          const SizedBox(height: 115),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  const FooterWidget(),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
