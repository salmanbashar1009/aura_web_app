
import 'package:aura_web_app/view/about_us/about_us_page.dart';
import 'package:aura_web_app/view/auth/login_page.dart';
import 'package:aura_web_app/view/auth/sign_up_page.dart';
import 'package:aura_web_app/view/auth/verify_page.dart';
import 'package:aura_web_app/view/buy/buy_page.dart';
import 'package:aura_web_app/view/contact_us/contact_us_page.dart';
import 'package:aura_web_app/view/dashBoard/dashboard_screen.dart';
import 'package:aura_web_app/view/privacy_policy/privacy_policy_page.dart';
import 'package:aura_web_app/view/profile_page/profile_page.dart';
import 'package:aura_web_app/view/report_problem/report_problem_page.dart';
import 'package:aura_web_app/view/terms_and_conditions/terms_and_conditions_page.dart';
import 'package:get/get.dart';

import '../view/property_listing/property_listing_page.dart';

class Routes {
  static RxString signUpPage = "/signUpPage".obs;
  static RxString loginPage = "/loginPage".obs;
  static RxString verifyPage = "/verifyPage".obs;
  static RxString dashBoardPage = "/dashBoardPage".obs;
  static RxString propertyListingPage = "/propertyListingPage".obs;
  static RxString profilePage = "/profilePage".obs;
  static RxString privacyPolicyPage = "/privacyPolicyPage".obs;
  static RxString reportProblemPage = "/reportProblemPage".obs;
  static RxString termsAndConditionsPage = "/termsAndConditionsPage".obs;
  static RxString aboutUsPage = "/aboutUsPage".obs;
  static RxString contactUsPage = "/contactUsPage".obs;
  static RxString buyPage = "/buyPage".obs;

}

final getPages = [
  GetPage(
    name: Routes.signUpPage.value,
    page: () =>  SignUpPage(),
  ),
  GetPage(
    name: Routes.loginPage.value,
    page: () =>  LoginPage(),
  ),
  GetPage(
    name: Routes.verifyPage.value,
    page: () =>  VerifyPage(),
  ),

  GetPage(
    name: Routes.dashBoardPage.value,
    page: () => const DashboardScreen(),
  ),
  GetPage(
    name: Routes.propertyListingPage.value,
    page: () =>  PropertyListingPage(),
  ),
  GetPage(
    name: Routes.profilePage.value,
    page: () =>  ProfilePage(),
  ),
  GetPage(
    name: Routes.privacyPolicyPage.value,
    page: () => const PrivacyPolicyPage(),
  ),
  GetPage(
    name: Routes.reportProblemPage.value,
    page: () => const ReportProblemPage(),
  ),
  GetPage(
    name: Routes.aboutUsPage.value,
    page: () =>  AboutUsPage(),
  ),
  GetPage(
    name: Routes.termsAndConditionsPage.value,
    page: () =>  TermsAndConditionsPage(),
  ),
  GetPage(
    name: Routes.contactUsPage.value,
    page: () =>  ContactUsPage(),
  ),
  GetPage(
    name: Routes.buyPage.value,
    page: () =>  BuyPage(),
  ),

];
