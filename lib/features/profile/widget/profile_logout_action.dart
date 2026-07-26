import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/profile_controller.dart';

class ProfileLogoutAction extends GetView<ProfileController> {
  const ProfileLogoutAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: controller.logout,
          style: OutlinedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.error,
            side: BorderSide(
              color: Theme.of(context).colorScheme.error.withValues(alpha: 0.3),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: const Text(
            'Sign Out of AetherCart',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'APP VERSION 2.4.1 (STABLE BUILD)',
          style: GoogleFonts.nunitoSans(
            fontSize: 10,
            letterSpacing: 2.0,
            color: Theme.of(context).colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
