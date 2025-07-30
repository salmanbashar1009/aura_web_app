import 'package:aura_web_app/utils/text_styles.dart';
import 'package:aura_web_app/view/dashBoard/components/footer_widget.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../widget/common_button.dart';
import '../dashBoard/components/header_widget.dart';
import 'components/property_purpose_section.dart';
import 'components/select_property_type.dart';

class PropertyListingPage extends StatelessWidget {
  PropertyListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 40),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const SizedBox(height: 66),
                       Align(
                         alignment: Alignment.topLeft,
                         child: Text(
                           "Rent/Sell your Property",
                           style: AppTextStyle.extraLarge55SizeText?.copyWith(
                             fontWeight: FontWeight.w500,
                             fontFamily: FontFamily.poppinsMedium,
                           ),
                         ),
                       ),
                       const SizedBox(height: 16),
                       Container(
                         width: 300,
                         height: 5,
                         decoration: BoxDecoration(
                           color: AppColors.appGradientDarkColor,
                           borderRadius: BorderRadius.circular(10),
                         ),
                       ),
                       const SizedBox(height: 90),
                       Align(
                         alignment: Alignment.topLeft,
                         child: Text(
                           "Property Details",
                           style: AppTextStyle.extraLarge36SizeText?.copyWith(
                             fontWeight: FontWeight.w500,
                             fontFamily: FontFamily.poppinsMedium,
                           ),
                         ),
                       ),
                       const SizedBox(height: 50),
                       PropertyPurposeSection(),
                       const SizedBox(height: 67),
                       Text(
                         "Property Type",
                         style: AppTextStyle.small16Text?.copyWith(
                           fontWeight: FontWeight.w400,
                           fontFamily: FontFamily.poppinsRegular,
                           color: AppColors.appTextGrayColor,
                         ),
                       ),
                       const SizedBox(height: 45),
                       SizedBox(width: 430, child: SelectPropertyType()),
                       const SizedBox(height: 98),
                       Text(
                         "Property Location",
                         style: AppTextStyle.extraLarge36SizeText?.copyWith(
                           fontWeight: FontWeight.w500,
                           fontFamily: FontFamily.poppinsMedium,
                         ),
                       ),
                       const SizedBox(height: 86),
                       Text(
                         "City",
                         style: AppTextStyle.small16Text?.copyWith(
                           fontWeight: FontWeight.w400,
                           fontFamily: FontFamily.poppinsRegular,
                         ),
                       ),
                       const SizedBox(height: 45),
                       SizedBox(
                         width: 430,
                         child: buildTextFormField(
                           hintText: "Select City",
                         ),
                       ),
                       const SizedBox(height: 52),
                       Text(
                         "Locality",
                         style: AppTextStyle.small16Text?.copyWith(
                           fontWeight: FontWeight.w400,
                           fontFamily: FontFamily.poppinsRegular,
                         ),
                       ),
                       const SizedBox(height: 45),
                       SizedBox(width: 430, child: buildTextFormField(hintText: "Enter Locality")),
                       const SizedBox(height: 70),
                       Wrap(
                         children: [
                           Icon(Icons.check_box,size: 30,color: AppColors.appGradientDarkColor,),
                           const SizedBox(width: 22,),
                           Text('''I am the owner/I have the authority to post this property.
I agree not to provide incorrect property information or state a discriminatory preference.
In case, the information does not comply with Magicbricks terms, Magicbricks.com has the right to edit/remove the property from their site.
Continue to Post''',style: AppTextStyle.small16Text?.copyWith(
                             fontWeight: FontWeight.w400,
                             fontFamily: FontFamily.poppinsRegular,
                           ),),
                         ],
                       ),
                       const SizedBox(height: 99),
                       CommonButton(onTap: (){}, buttonName: "Continue to post",width: 374,fontStyle: AppTextStyle.medium24Text?.copyWith(
                         fontWeight: FontWeight.w500,
                         fontFamily: FontFamily.poppinsMedium,
                         color: AppColors.appWhiteColor,
                       ),),
                     ],
                   ),
                 ),
                  const SizedBox(height: 215),
                  FooterWidget()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildTextFormField({TextEditingController? controller, String? hintText}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.medium20Text?.copyWith(
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.poppinsRegular,
          color: AppColors.appTextGrayColor,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.appBorderColor)
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.appBorderColor)
        ),
      ),
    );
  }
}
