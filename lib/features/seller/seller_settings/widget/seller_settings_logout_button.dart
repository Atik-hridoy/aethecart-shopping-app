import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/seller_settings_controller.dart';

class SellerSettingsLogoutButton extends GetView<SellerSettingsController> {
  const SellerSettingsLogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton.icon(
        onPressed: controller.logoutSeller,
        icon: const Icon(Icons.logout, color: Colors.redAccent, size: 18),
        label: Text(
          'SWITCH TO CUSTOMER MODE / LOG OUT',
          style: GoogleFonts.nunitoSans(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
            letterSpacing: 1.0,
          ),
        ),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.redAccent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
