import 'package:aura_web_app/controller/profile_controller.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import 'manager_card.dart';

class ManagerSlider extends StatelessWidget {
  // final ProfileController controller;

   const ManagerSlider({ super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60),
      color: AppColors.appBgColor,
      child: Column(
        children: [
          Text("Our Trusted Mangers",style: AppTextStyle.extraLarge36SizeText.copyWith(
            fontFamily: FontFamily.poppinsMedium,
            fontWeight: FontWeight.w500,
            fontSize: 35,
          ),),
          const SizedBox(height: 74,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                IconButton(
                  onPressed: controller.goToPrevious,
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.appGradientDarkColor,
                    size: 32,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 480,
                    child: PageView.builder(
                      controller: controller.pageController,
                      itemCount: controller.managers.length,
                      onPageChanged: (index) => controller.currentIndex.value = index,
                      itemBuilder: (context, index) {
                        final manager = controller.managers[index];
                        return Obx(() {
                          final isSelected = index == controller.currentIndex.value;
                          return Center(
                            child: ManagerCard(
                              manager: manager,
                              isSelected: isSelected,
                            ),
                          );
                        });
                      },
                    ),
                  ),
                ),
                IconButton(
                  onPressed: controller.goToNext,
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.appGradientDarkColor,
                    size: 32,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
