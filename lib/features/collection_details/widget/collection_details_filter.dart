import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_strings.dart';
import '../controller/collection_details_controller.dart';

class CollectionDetailsFilter extends GetView<CollectionDetailsController> {
  const CollectionDetailsFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        scrollDirection: Axis.horizontal,
        itemCount: AppStrings.colDetailFilters.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final filter = AppStrings.colDetailFilters[index];
          
          return Obx(() {
            final isSelected = controller.selectedFilter.value == filter;
            
            return InkWell(
              onTap: () => controller.setFilter(filter),
              borderRadius: BorderRadius.circular(24),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: isSelected 
                      ? Theme.of(context).colorScheme.primary 
                      : Theme.of(context).colorScheme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: isSelected 
                      ? [
                          BoxShadow(
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.05),
                            blurRadius: 20,
                            offset: const Offset(0, 4),
                          )
                        ]
                      : null,
                ),
                alignment: Alignment.center,
                child: Text(
                  filter,
                  style: GoogleFonts.nunitoSans(
                    color: isSelected 
                        ? Theme.of(context).colorScheme.onPrimary 
                        : Theme.of(context).colorScheme.onSurfaceVariant,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
