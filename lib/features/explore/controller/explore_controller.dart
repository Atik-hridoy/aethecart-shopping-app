import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/mock/explore_mock_data.dart';
import '../data/models/explore_models.dart';

export '../data/models/explore_models.dart';

class ExploreController extends GetxController {
  final searchController = TextEditingController();

  final selectedFilter = 'All'.obs;
  final selectedCategory = 'Apparel'.obs;
  final selectedSubFilter = 'All'.obs;

  final double balance = ExploreMockData.userBalance;
  final int points = ExploreMockData.userPoints;

  final filters = ExploreMockData.filters;
  final subFilters = ExploreMockData.subFilters;
  final categories = ExploreMockData.categories;

  List<ExploreBrand> get currentBrands {
    return ExploreMockData.categoryBrandsMap[selectedCategory.value] ??
        ExploreMockData.categoryBrandsMap['Apparel']!;
  }

  List<ExploreProduct> get filteredPopularProducts {
    return ExploreMockData.getPopularProductsByFilter(selectedFilter.value);
  }

  late final Map<String, List<ExploreProduct>> categoryProductsMap =
      ExploreMockData.getCategoryProductsMap();

  List<ExploreProduct> get currentCategoryProducts {
    final list = categoryProductsMap[selectedCategory.value] ?? [];
    if (selectedCategory.value != 'Apparel' || selectedSubFilter.value == 'All') {
      return list;
    }
    return list.where((p) => p.tag == selectedSubFilter.value).toList();
  }

  void selectCategory(String categoryName) {
    selectedCategory.value = categoryName;
    selectedSubFilter.value = 'All'; // Reset sub-filter on category change
  }

  void setSubFilter(String subFilter) {
    selectedSubFilter.value = subFilter;
  }

  void setFilter(String filter) {
    selectedFilter.value = filter;
  }

  void toggleFavorite(ExploreProduct product) {
    product.isFavorite.toggle();
    Get.snackbar(
      product.isFavorite.value ? 'Added to Wishlist' : 'Removed from Wishlist',
      product.title,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}
