import 'package:aura_web_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/property_listing_controller.dart';

class SelectPropertyType extends StatelessWidget {
   SelectPropertyType({
    super.key,

  }) ;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   final PropertyListingController controller = Get.put(PropertyListingController());
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Obx(() => DropdownButtonFormField<String>(
        decoration: InputDecoration(
          // labelText: 'Property Type',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appBorderColor), // Change color if needed
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appBorderColor, width: 2),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        value: controller.selectedPropertyType.value,
        items: controller.propertyTypes.map((String type) {
          return DropdownMenuItem<String>(
            value: type,
            child: Text(type),
          );
        }).toList(),
        onChanged: (String? newValue) {
          if (newValue != null) {
            controller.setSelectedPropertyType(newValue);
          }
        },
        validator: (value) {
          if (value == null || value == 'Select Property Type') {
            return 'Please select a valid property type';
          }
          return null;
        },
      )),
    );
  }
}