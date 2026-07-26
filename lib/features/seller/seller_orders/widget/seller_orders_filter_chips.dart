import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_orders_controller.dart';

class SellerOrdersFilterChips extends GetView<SellerOrdersController> {
  const SellerOrdersFilterChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: controller.statusFilters.map((filter) {
            final isSelected = controller.selectedStatusFilter.value == filter;
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
                onSelected: (_) => controller.selectedStatusFilter.value = filter,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
