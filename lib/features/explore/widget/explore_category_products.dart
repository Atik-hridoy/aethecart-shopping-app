import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/explore_controller.dart';
import 'explore_product_card.dart';

class ExploreCategoryProducts extends StatelessWidget {
  const ExploreCategoryProducts({super.key, required this.controller});

  final ExploreController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Obx(() {
      final categoryName = controller.selectedCategory.value;
      final selectedSub = controller.selectedSubFilter.value;
      final products = controller.currentCategoryProducts;
      final isApparel = categoryName == 'Apparel';

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Collection Header & Item Count
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$categoryName Collection',
                  style: GoogleFonts.literata(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                Text(
                  '${products.length} items',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
          // Sub-Filter Pills ONLY for Apparel Category
          if (isApparel) ...[
            const SizedBox(height: 14),
            SizedBox(
              height: 36,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: controller.subFilters.length,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final sub = controller.subFilters[index];
                  final isSelected = selectedSub == sub;

                  return ChoiceChip(
                    label: Text(
                      sub,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: isSelected
                            ? theme.colorScheme.onPrimary
                            : theme.colorScheme.onSurface,
                      ),
                    ),
                    selected: isSelected,
                    onSelected: (_) => controller.setSubFilter(sub),
                    selectedColor: theme.colorScheme.primary,
                    backgroundColor: theme.colorScheme.surfaceContainerHigh,
                    elevation: isSelected ? 2 : 0,
                    side: BorderSide(
                      color: isSelected
                          ? Colors.transparent
                          : theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(999),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  );
                },
              ),
            ),
          ],
          const SizedBox(height: 20),
          // Products Grid or Empty State
          if (products.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.inventory_2_outlined,
                      size: 44,
                      color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'No $selectedSub products found in $categoryName',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 14,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final isSmall = constraints.maxWidth < 600;
                  final crossAxisCount = isSmall ? 2 : 3;

                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 24,
                      childAspectRatio: 0.62,
                    ),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return ExploreProductCard(
                        product: product,
                        onFavoriteToggle: () => controller.toggleFavorite(product),
                      );
                    },
                  );
                },
              ),
            ),
        ],
      );
    });
  }
}
