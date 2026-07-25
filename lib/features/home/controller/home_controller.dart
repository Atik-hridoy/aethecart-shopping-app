import 'package:get/get.dart';

class HomeController extends GetxController {
  // Navigation State
  final currentNavIndex = 0.obs;

  // Vibe Filter State
  final activeVibeFilter = 'Serene Minimalist'.obs;

  void changeNavIndex(int index) {
    currentNavIndex.value = index;
  }

  void changeVibeFilter(String vibe) {
    activeVibeFilter.value = vibe;
  }
}
