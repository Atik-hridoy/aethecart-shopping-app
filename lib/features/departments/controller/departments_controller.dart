import 'package:get/get.dart';

class DepartmentsController extends GetxController {
  final RxBool isSearchExpanded = false.obs;
  
  void toggleSearch() {
    isSearchExpanded.value = !isSearchExpanded.value;
  }

  void goBack() {
    if (isSearchExpanded.value) {
      isSearchExpanded.value = false;
    } else {
      Get.back();
    }
  }
}
