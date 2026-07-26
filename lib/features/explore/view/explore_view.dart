import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/explore_controller.dart';
import '../widget/explore_category_products.dart';
import '../widget/explore_category_scroll.dart';
import '../widget/explore_curated_brands.dart';
import '../widget/explore_popular_selection.dart';
import '../widget/explore_search_header.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 120),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 896),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Sticky Search Header
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
                    child: ExploreSearchHeader(controller: controller),
                  ),
                  const SizedBox(height: 16),
                  // Shop by Category
                  ExploreCategoryScroll(
                    categories: controller.categories,
                    controller: controller,
                  ),
                  const SizedBox(height: 24),
                  // Curated Brands (Dynamically updates per category)
                  ExploreCuratedBrands(controller: controller),
                  const SizedBox(height: 24),
                  // Popular Selection Section
                  ExplorePopularSelection(controller: controller),
                  const SizedBox(height: 32),
                  // Selected Category Products (Mock data according to pressed category)
                  ExploreCategoryProducts(controller: controller),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
