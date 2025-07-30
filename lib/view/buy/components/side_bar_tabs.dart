import 'package:aura_web_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/text_styles.dart';

class SideBarTabs extends StatelessWidget {
  const SideBarTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = ['Ready to Move', 'Owner Properties', 'Budget Homes', 'Premium Homes'];

    return Column(
      spacing: 5,
      children: tabs.map((title) => HoverTab(title: title)).toList(),
    );
  }
}

class HoverTab extends StatefulWidget {
  final String title;
  const HoverTab({super.key, required this.title});

  @override
  State<HoverTab> createState() => _HoverTabState();
}

class _HoverTabState extends State<HoverTab> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: Container(
        width: 440,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 28),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: _isHovering ? AppColors.appGradientDarkColor : AppColors.appWhiteColor,
        ),
        child: Text(
          widget.title,
          style: AppTextStyle.medium24Text.copyWith(
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.poppinsMedium,
              color: _isHovering ? AppColors.appWhiteColor : AppColors.appBlackColor,
          ),
        ),
      ),
    );
  }
}
