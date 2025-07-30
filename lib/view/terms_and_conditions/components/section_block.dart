import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/terms_and_conditions_controller.dart';
import '../../../utils/text_styles.dart';

class SectionBlock extends StatelessWidget {
  final String title;

  SectionBlock(this.title);

  final lorem =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
      "when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TermsAndConditionsController>();
    final key = controller.sectionKeys[title] ?? GlobalKey();

    return Container(
      key: key,
      margin: EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.medium24Text.copyWith(
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.poppinsMedium,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 12),
          Text(lorem,   style: AppTextStyle.medium24Text.copyWith(
          fontWeight: FontWeight.w400,
            fontFamily: FontFamily.poppinsRegular,
            fontSize: 20,
          ),),
        ],
      ),
    );
  }
}
