

import 'package:aura_web_app/controller/login_controller.dart';
import 'package:get/get.dart';

import '../controller/profile_controller.dart';
import '../controller/property_listing_controller.dart';
import '../controller/terms_and_conditions_controller.dart';

init() async {
  Get.put(LoginController());
  Get.put(PropertyListingController());
  Get.put(ProfileController());
  Get.put(TermsAndConditionsController());
}
