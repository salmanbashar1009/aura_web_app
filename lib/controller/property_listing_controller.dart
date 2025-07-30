import 'package:get/get.dart';

class PropertyListingController extends GetxController {
  final List<String> propertyTypes = [
    'Select Property Type', // Placeholder
    'Apartment',
    'House',
    'Villa',
    'Studio',
    'Townhouse',
  ];

  // Proper default value
  final RxString selectedPropertyType = 'Select Property Type'.obs;

  void setSelectedPropertyType(String value) {
    selectedPropertyType.value = value;
  }
}
