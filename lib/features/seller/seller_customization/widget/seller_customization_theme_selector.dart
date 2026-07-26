import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_customization_controller.dart';

class SellerCustomizationThemeSelector extends GetView<SellerCustomizationController> {
  const SellerCustomizationThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'AESTHETIC & THEME PRESET',
          style: GoogleFonts.nunitoSans(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 12),
        Obx(
          () => Column(
            children: controller.themePresets.map((theme) {
              final isSelected = controller.selectedTheme.value == theme;
              return Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isSelected ? AppColors.primary : Colors.black.withOpacity(0.06),
                    width: isSelected ? 2 : 1,
                  ),
                ),
                child: ListTile(
                  onTap: () => controller.selectedTheme.value = theme,
                  leading: Icon(
                    isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
                    color: isSelected ? AppColors.primary : AppColors.textSecondary,
                  ),
                  title: Text(
                    theme,
                    style: GoogleFonts.nunitoSans(
                      fontSize: 14,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
