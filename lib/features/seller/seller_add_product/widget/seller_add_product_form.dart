import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_add_product_controller.dart';
import 'seller_add_product_text_field.dart';

class SellerAddProductForm extends GetView<SellerAddProductController> {
  const SellerAddProductForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFormLabel(AppStrings.sellerProductTitleLabel),
        const SizedBox(height: 8),
        const SellerAddProductTextField(hint: AppStrings.sellerProductTitleHint),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFormLabel(AppStrings.sellerPriceLabel),
                  const SizedBox(height: 8),
                  const SellerAddProductTextField(
                    hint: AppStrings.sellerPriceHint,
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFormLabel(AppStrings.sellerStockLabel),
                  const SizedBox(height: 8),
                  const SellerAddProductTextField(
                    hint: AppStrings.sellerStockHint,
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        _buildFormLabel(AppStrings.sellerCategoryLabel),
        const SizedBox(height: 8),
        Obx(
          () => Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black.withOpacity(0.08)),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: controller.selectedCategory.value,
                isExpanded: true,
                items: controller.categories.map((cat) {
                  return DropdownMenuItem<String>(
                    value: cat,
                    child: Text(
                      cat,
                      style: GoogleFonts.nunitoSans(fontSize: 14, color: AppColors.textPrimary),
                    ),
                  );
                }).toList(),
                onChanged: (val) {
                  if (val != null) controller.selectedCategory.value = val;
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        _buildFormLabel(AppStrings.sellerDescriptionLabel),
        const SizedBox(height: 8),
        const SellerAddProductTextField(
          hint: AppStrings.sellerDescriptionHint,
          maxLines: 4,
        ),
      ],
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
