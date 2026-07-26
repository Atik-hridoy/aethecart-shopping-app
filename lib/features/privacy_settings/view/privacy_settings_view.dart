import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/privacy_settings_controller.dart';
import '../widget/account_visibility_section.dart';
import '../widget/data_export_card.dart';
import '../widget/privacy_danger_zone.dart';
import '../widget/privacy_header.dart';
import '../widget/privacy_toggle_card.dart';

class PrivacySettingsView extends GetView<PrivacySettingsController> {
  const PrivacySettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface.withValues(alpha: 0.8),
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: theme.colorScheme.primary,
        ),
        title: Text(
          'AetherCart',
          style: GoogleFonts.literata(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
            letterSpacing: -0.5,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
            color: theme.colorScheme.primary,
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 100),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const PrivacyHeader(),
                  const SizedBox(height: 32),
                  // Bento Grid
                  Obx(
                    () => PrivacyToggleCard(
                      title: 'Personalized Recommendations',
                      description:
                          'Use your browsing and purchase history to suggest products you might love. Disabling this will result in more generic product listings.',
                      value: controller.recommendationsEnabled.value,
                      onChanged: controller.toggleRecommendations,
                      isFullWidth: true,
                    ),
                  ),
                  const SizedBox(height: 20),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final isMobile = constraints.maxWidth < 600;

                      final locationCard = Obx(
                        () => PrivacyToggleCard(
                          title: 'Location Access',
                          description:
                              'Helps us find the nearest pickup points and calculate precise shipping times for your orders.',
                          icon: Icons.location_on_outlined,
                          statusLabel: controller.locationEnabled.value
                              ? 'Currently Enabled'
                              : 'Disabled',
                          value: controller.locationEnabled.value,
                          onChanged: controller.toggleLocation,
                        ),
                      );

                      final marketingCard = Obx(
                        () => PrivacyToggleCard(
                          title: 'Marketing Emails',
                          description:
                              'Stay updated with our curated newsletters, seasonal drops, and exclusive member-only discounts.',
                          icon: Icons.mail_outline_rounded,
                          statusLabel: controller.marketingEnabled.value
                              ? 'Opted In'
                              : 'Opted Out',
                          value: controller.marketingEnabled.value,
                          onChanged: controller.toggleMarketing,
                        ),
                      );

                      return isMobile
                          ? Column(
                              children: [
                                locationCard,
                                const SizedBox(height: 20),
                                marketingCard,
                              ],
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: locationCard),
                                const SizedBox(width: 20),
                                Expanded(child: marketingCard),
                              ],
                            );
                    },
                  ),
                  const SizedBox(height: 20),
                  Obx(
                    () => AccountVisibilitySection(
                      selectedVisibility: controller.accountVisibility.value,
                      onChanged: controller.setVisibility,
                    ),
                  ),
                  const SizedBox(height: 20),
                  DataExportCard(
                    onRequestExport: controller.requestExport,
                  ),
                  const SizedBox(height: 48),
                  Divider(
                    color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
                  ),
                  const SizedBox(height: 32),
                  PrivacyDangerZone(
                    onDeactivate: controller.deactivateAccount,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
