import 'package:aura_web_app/controller/terms_and_conditions_controller.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/view/terms_and_conditions/terms_and_conditions_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';

class SideMenuContainer extends StatelessWidget {
  final sectionCtrl = Get.find<TermsAndConditionsController>();

  final List<String> items = [
    'Terms',
    'Services',
    'Eligibility',
    'Subscription fees',
    'Cancellation',
    'Security',
    'Confidentiality',
    'Variation',
    'Maintenance',
    'Money back Policy',
  ];

   SideMenuContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 240,
      // height: 1300,
      padding: const EdgeInsets.symmetric(vertical: 45),
      decoration: BoxDecoration(
        color: AppColors.appWhiteColor,
        borderRadius: BorderRadius.horizontal(left: Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items.map((item) => _NavItem(title: item,)).toList(),
      ),
    );
  }
}

class _NavItem extends StatefulWidget {
  final String title;
  const _NavItem({required this.title});

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TermsAndConditionsController>();

    return Obx(() {
      final isSelected = controller.selected.value == widget.title;
      final bgColor = isSelected || isHovered ? Colors.blue : Colors.white;
      final textColor = isSelected || isHovered ? Colors.white : Colors.grey[800];

      return MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: GestureDetector(
          onTap: () => controller.scrollToSection(widget.title),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            // width: double.infinity,
            width: 400,
            height: 120,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 50),
            color: bgColor,
            child: Text(
              widget.title,
              style: AppTextStyle.extraLarge36SizeText.copyWith(
                fontFamily: FontFamily.poppinsMedium,
                fontWeight: FontWeight.w500,
                fontSize: 35,
                color: textColor,
              ),
            ),
          ),
        ),
      );
    });
  }
}
