import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_customization_controller.dart';

class SellerCustomizationForm extends GetView<SellerCustomizationController> {
  const SellerCustomizationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'STORE BRANDING',
          style: GoogleFonts.nunitoSans(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Storefront Name',
          style: GoogleFonts.nunitoSans(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        TextField(
          onChanged: (val) => controller.storeName.value = val,
          controller: TextEditingController(text: controller.storeName.value),
          decoration: _inputDecoration('e.g. Aether Atelier'),
        ),
        const SizedBox(height: 16),
        Text(
          'Storefront Tagline',
          style: GoogleFonts.nunitoSans(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        TextField(
          onChanged: (val) => controller.storeTagline.value = val,
          controller: TextEditingController(text: controller.storeTagline.value),
          decoration: _inputDecoration('e.g. Curated Minimalist Garments'),
        ),
      ],
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: GoogleFonts.nunitoSans(fontSize: 13, color: AppColors.textSecondary),
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.black.withOpacity(0.08)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.black.withOpacity(0.08)),
      ),
    );
  }
}
