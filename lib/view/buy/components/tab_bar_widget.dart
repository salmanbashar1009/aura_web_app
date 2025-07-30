import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = ['Popular Choices', 'Explore', 'Buy Tools'];

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFF515151))),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: 150,
        children: tabs.map((title) => HoverTab(title: title)).toList(),
      ),
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
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _isHovering ? AppColors.appGradientDarkColor : Colors.transparent,
              width: 10,
            ),
          ),
        ),
        child: Text(
          widget.title,
          style: AppTextStyle.medium24Text.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: FontFamily.poppinsMedium,
            color: AppColors.appBlackColor,
            fontSize: 28
          ),
        ),
      ),
    );
  }
}
