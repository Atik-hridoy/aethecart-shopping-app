import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/explore_controller.dart';

class ExploreCategoryScroll extends StatelessWidget {
  const ExploreCategoryScroll({
    super.key,
    required this.categories,
    required this.controller,
  });

  final List<ExploreCategory> categories;
  final ExploreController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Shop by Category',
            style: GoogleFonts.literata(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 104,
          child: Obx(() {
            final activeCategory = controller.selectedCategory.value;

            return ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final cat = categories[index];
                final isSelected = activeCategory == cat.name;

                return InkWell(
                  onTap: () => controller.selectCategory(cat.name),
                  borderRadius: BorderRadius.circular(24),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: 84,
                    height: 98,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? theme.colorScheme.primary.withValues(alpha: 0.15)
                          : cat.bgColor,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: isSelected
                            ? theme.colorScheme.primary
                            : theme.colorScheme.outlineVariant.withValues(alpha: 0.2),
                        width: isSelected ? 2 : 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: isSelected
                              ? theme.colorScheme.primary.withValues(alpha: 0.15)
                              : theme.colorScheme.secondary.withValues(alpha: 0.04),
                          blurRadius: isSelected ? 20 : 16,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          cat.icon,
                          size: 26,
                          color: isSelected ? theme.colorScheme.primary : cat.iconColor,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          cat.name.toUpperCase(),
                          style: GoogleFonts.nunitoSans(
                            fontSize: 10,
                            fontWeight: isSelected ? FontWeight.w800 : FontWeight.bold,
                            letterSpacing: 0.8,
                            color: isSelected
                                ? theme.colorScheme.primary
                                : theme.colorScheme.onSurfaceVariant,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}
