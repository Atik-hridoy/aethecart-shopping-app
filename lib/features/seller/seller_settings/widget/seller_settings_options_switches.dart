import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_settings_controller.dart';

class SellerSettingsOptionsSwitches extends GetView<SellerSettingsController> {
  const SellerSettingsOptionsSwitches({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'SHIPPING & FULFILLMENT',
          style: GoogleFonts.nunitoSans(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 10),
        Obx(
          () => SwitchListTile(
            activeTrackColor: AppColors.primary,
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: Text(
              'Carbon-Neutral Shipping Preferred',
              style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'Automatically offset carbon emissions on order shipments',
              style: GoogleFonts.nunitoSans(fontSize: 11, color: AppColors.textSecondary),
            ),
            value: controller.carbonNeutralShipping.value,
            onChanged: (val) => controller.carbonNeutralShipping.value = val,
          ),
        ),
        const SizedBox(height: 10),
        Obx(
          () => SwitchListTile(
            activeTrackColor: AppColors.primary,
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: Text(
              'Auto-Fulfill Digital Assets',
              style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            value: controller.autoFulfillOrders.value,
            onChanged: (val) => controller.autoFulfillOrders.value = val,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'AI ASSISTANT & NOTIFICATIONS',
          style: GoogleFonts.nunitoSans(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 10),
        Obx(
          () => SwitchListTile(
            activeTrackColor: AppColors.primary,
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: Text(
              'AI Restock & Trend Alerts',
              style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'Receive smart notifications when item demand surges',
              style: GoogleFonts.nunitoSans(fontSize: 11, color: AppColors.textSecondary),
            ),
            value: controller.aiRestockAlerts.value,
            onChanged: (val) => controller.aiRestockAlerts.value = val,
          ),
        ),
      ],
    );
  }
}
