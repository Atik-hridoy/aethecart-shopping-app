import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';
import '../controller/explore_controller.dart';
import 'explore_product_card.dart';

class ExplorePopularSelection extends StatelessWidget {
  const ExplorePopularSelection({super.key, required this.controller});

  final ExploreController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Popular Selection',
                style: GoogleFonts.literata(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              InkWell(
                onTap: () => Get.toNamed(Routes.collections),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Text(
                    'VIEW ALL',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        // Filter Pills Bar
        SizedBox(
          height: 38,
          child: Obx(() {
            final selectedFilter = controller.selectedFilter.value;
            return ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: controller.filters.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final filter = controller.filters[index];
                final isSelected = selectedFilter == filter;

                return ChoiceChip(
                  label: Text(
                    filter,
                    style: GoogleFonts.nunitoSans(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: isSelected
                          ? theme.colorScheme.onPrimary
                          : theme.colorScheme.onSurface,
                    ),
                  ),
                  selected: isSelected,
                  onSelected: (_) => controller.setFilter(filter),
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
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                );
              },
            );
          }),
        ),
        const SizedBox(height: 24),
        // Product Grid (Dynamically updates per selected popular filter pill)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Obx(() {
            final popularProducts = controller.filteredPopularProducts;

            return LayoutBuilder(
              builder: (context, constraints) {
                final isSmall = constraints.maxWidth < 600;
                final crossAxisCount = isSmall ? 2 : 3;

                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: popularProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 24,
                    childAspectRatio: 0.62,
                  ),
                  itemBuilder: (context, index) {
                    final product = popularProducts[index];
                    return ExploreProductCard(
                      product: product,
                      onFavoriteToggle: () => controller.toggleFavorite(product),
                    );
                  },
                );
              },
            );
          }),
        ),
      ],
    );
  }
}
