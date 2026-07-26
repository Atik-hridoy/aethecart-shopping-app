import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_products_controller.dart';

class SellerProductSearchFilterBar extends GetView<SellerProductsController> {
  const SellerProductSearchFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (val) => controller.searchQuery.value = val,
          decoration: InputDecoration(
            hintText: 'Search inventory by title or SKU...',
            hintStyle: GoogleFonts.nunitoSans(fontSize: 13, color: AppColors.textSecondary),
            prefixIcon: const Icon(Icons.search, color: AppColors.primary),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.black.withOpacity(0.05)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.black.withOpacity(0.05)),
            ),
          ),
        ),
        const SizedBox(height: 14),
        Obx(
          () => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: controller.filterOptions.map((filter) {
                final isSelected = controller.selectedFilter.value == filter;
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ChoiceChip(
                    label: Text(
                      filter,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 12,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        color: isSelected ? Colors.white : AppColors.textPrimary,
                      ),
                    ),
                    selected: isSelected,
                    selectedColor: AppColors.primary,
                    backgroundColor: Colors.white,
                    onSelected: (_) => controller.selectedFilter.value = filter,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
