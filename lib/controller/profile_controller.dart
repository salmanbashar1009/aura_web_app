import 'package:aura_web_app/utils/svgImage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/profile_page/models/manager_model.dart';

class ProfileController extends GetxController {
  var currentIndex = 1.obs;

  final managers = [
    ManagerModel(name: "Ajay Matthew", title: "Sale Manager", imagePath: AppImage.ajay.value),
    ManagerModel(name: "Jenitta Mellina", title: "Sale Manager", imagePath: AppImage.jenitta.value),
    ManagerModel(name: "Ben Franklin", title: "Sale Manager", imagePath: AppImage.ben.value),
    ManagerModel(name: "Ajay Matthew", title: "Sale Manager", imagePath: AppImage.ajay.value),
    ManagerModel(name: "Jenitta Mellina", title: "Sale Manager", imagePath: AppImage.jenitta.value),
  ];

  final PageController pageController = PageController(
    initialPage: 1,
    viewportFraction: 1 / 3,
  );
  void onPageChanged(int index) {
    currentIndex.value = index;
  }
  void goToPrevious() {
    if (currentIndex > 0) {
      currentIndex.value--;
      pageController.animateToPage(
        currentIndex.value,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToNext() {
    if (currentIndex < managers.length - 1) {
      currentIndex.value++;
      pageController.animateToPage(
        currentIndex.value,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
