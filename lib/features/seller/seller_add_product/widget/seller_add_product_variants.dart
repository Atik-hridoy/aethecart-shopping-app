import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_add_product_controller.dart';
import 'seller_add_product_text_field.dart';

class SellerAddProductVariants extends GetView<SellerAddProductController> {
  const SellerAddProductVariants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('3. VARIANTS & SWATCHES'),
        const SizedBox(height: 12),
        _buildFormLabel(AppStrings.sellerColorsLabel),
        const SizedBox(height: 8),
        SellerAddProductTextField(
          hint: AppStrings.sellerColorsHint,
          initialValue: controller.colorsInput.value,
        ),
        const SizedBox(height: 16),
        _buildFormLabel(AppStrings.sellerSizesLabel),
        const SizedBox(height: 8),
        Obx(
          () => Wrap(
            spacing: 8,
            runSpacing: 8,
            children: controller.availableSizeOptions.map((size) {
              final isSelected = controller.selectedSizes.contains(size);
              return FilterChip(
                label: Text(
                  size,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 12,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    color: isSelected ? Colors.white : AppColors.textPrimary,
                  ),
                ),
                selected: isSelected,
                selectedColor: AppColors.primary,
                backgroundColor: Colors.white,
                onSelected: (_) => controller.toggleSize(size),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: GoogleFonts.nunitoSans(
        fontSize: 11,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
        color: AppColors.primary,
      ),
    );
  }

  Widget _buildFormLabel(String text) {
    return Text(
      text,
      style: GoogleFonts.nunitoSans(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
    );
  }
}
