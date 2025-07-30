import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/manager_model.dart';

class ManagerCard extends StatelessWidget {
  final ManagerModel manager;
  final bool isSelected;

  const ManagerCard({super.key, required this.manager, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.appGradientDarkColor : Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: isSelected
            ? [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          )
        ]
            : [],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              manager.imagePath,
              height: 294,
              width: 295,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            manager.name,
            style: AppTextStyle.medium20Text?.copyWith(
              color: isSelected ? AppColors.appWhiteColor : AppColors.appBlackColor,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.poppinsSemiBold,
            ),
          ),
          const SizedBox(height: 6,),
          Text(
            manager.title,
            style: AppTextStyle.small14Text?.copyWith(
              color: isSelected ? AppColors.appWhiteColor : AppColors.appBlackColor,
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.poppinsRegular,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              socialIcon(FontAwesomeIcons.facebook, isSelected),
              socialIcon(FontAwesomeIcons.twitter, isSelected),
              socialIcon(FontAwesomeIcons.linkedin, isSelected),
            ],
          ),
        ],
      ),
    );
  }

  Widget socialIcon(IconData icon, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: Icon(
        icon,
        color: isSelected ? AppColors.appWhiteColor : Color(0xFF666666),
        size: 20,
      ),
    );
  }
}