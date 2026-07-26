import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_customization_controller.dart';

class SellerCustomizationSaveButton extends GetView<SellerCustomizationController> {
  const SellerCustomizationSaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: Obx(
        () => ElevatedButton(
          onPressed: controller.isSaving.value ? null : controller.saveCustomization,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            controller.isSaving.value ? 'SAVING...' : 'SAVE STOREFRONT',
            style: GoogleFonts.nunitoSans(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
