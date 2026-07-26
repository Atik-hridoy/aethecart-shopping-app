import 'package:get/get.dart';

import '../data/mock/home_mock_data.dart';

export '../data/mock/home_mock_data.dart';

class HomeController extends GetxController {
  // Navigation State
  final currentNavIndex = 0.obs;

  // Vibe Filter State
  final activeVibeFilter = 'Serene Minimalist'.obs;

  List<HomeVibeProduct> get activeVibeProducts {
    return HomeMockData.getProductsForVibe(activeVibeFilter.value);
  }

  void changeNavIndex(int index) {
    currentNavIndex.value = index;
  }

  void changeVibeFilter(String vibe) {
    activeVibeFilter.value = vibe;
  }
}
