import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/text_styles.dart';

class PropertyPurposeSection extends StatelessWidget {
  const PropertyPurposeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("For",style: AppTextStyle.medium24Text?.copyWith(fontFamily: FontFamily.poppinsRegular),),
        const SizedBox(width: 44),
        buildPurposeItem(onTap: (){}, title: "Rent/Release"),
        const SizedBox(width: 44),
        buildPurposeItem(onTap: (){}, title: "Sale"),
        const SizedBox(width: 44),
        buildPurposeItem(onTap: (){}, title: "PG/Hostel"),
      ],
    );
  }

  Widget buildPurposeItem({VoidCallback? onTap, required String title}) {
    return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
              child: Icon(Icons.circle_outlined,size: 25,color: AppColors.appTextGrayColor,)),
          const SizedBox(width: 19),
          Text(title,style: AppTextStyle.medium24Text?.copyWith(fontFamily: FontFamily.poppinsRegular),),

        ],
      );
  }
}
