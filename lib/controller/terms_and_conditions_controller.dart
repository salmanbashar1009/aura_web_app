import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditionsController extends GetxController {
  final ScrollController scrollController = ScrollController();
  final Map<String, GlobalKey> sectionKeys = {};

  final RxString selected = 'Terms'.obs;

  @override
  void onInit() {
    super.onInit();

    final sections = [
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

    for (var section in sections) {
      sectionKeys[section] = GlobalKey();
    }
  }

  void scrollToSection(String section) {
    selected.value = section;
    final key = sectionKeys[section];
    if (key != null && key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        alignment: 0.1,
      );
    }
  }
}
