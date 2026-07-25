import 'package:get/get.dart';

class CollectionDetailsController extends GetxController {
  final RxString selectedFilter = 'All'.obs;
  
  void setFilter(String filter) {
    selectedFilter.value = filter;
  }
  
  void goBack() {
    Get.back();
  }
}
