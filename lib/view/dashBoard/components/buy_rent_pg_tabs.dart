import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class BuyRentPgTabs extends StatefulWidget {
  const BuyRentPgTabs({super.key});

  @override
  _BuyRentPgTabsState createState() => _BuyRentPgTabsState();
}

class _BuyRentPgTabsState extends State<BuyRentPgTabs> {
  int selectedIndex = 0;

  final List<String> options = ['Buy', 'Rent', 'PG'];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: List.generate(options.length, (index) {
          bool isSelected = selectedIndex == index;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 27, horizontal: 54),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white : Colors.orange,
                  borderRadius: _getBorderRadius(index),
                ),
                alignment: Alignment.center,
                child: Text(
                  options[index],
                  style: AppTextStyle.medium24Text?.copyWith(
                    color: isSelected ? AppColors.appOrangeColor : AppColors.appWhiteColor,
                    fontFamily: FontFamily.poppinsMedium,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  BorderRadius? _getBorderRadius(int index) {
    if (index == 0) {
      return BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
      );
    } else if (index == options.length - 1) {
      return BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10),
      );
    }
    return null; // middle button - no corner rounding
  }
}
