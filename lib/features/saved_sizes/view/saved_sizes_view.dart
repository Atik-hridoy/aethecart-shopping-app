import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/saved_sizes_controller.dart';
import '../widget/brand_preferences_list.dart';
import '../widget/measurement_grid.dart';
import '../widget/profile_header_card.dart';
import '../widget/scan_banner.dart';

class SavedSizesView extends GetView<SavedSizesController> {
  const SavedSizesView({super.key});

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
          Stack(
            clipBehavior: Clip.none,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined),
                color: theme.colorScheme.primary,
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.tertiary,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 100),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1024),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ProfileHeaderCard(),
                  const SizedBox(height: 32),
                  MeasurementGrid(
                    height: controller.height,
                    weight: controller.weight,
                    chest: controller.chest,
                    waist: controller.waist,
                    shoulder: controller.shoulder,
                    inseam: controller.inseam,
                    neck: controller.neck,
                    armLength: controller.armLength,
                  ),
                  const SizedBox(height: 32),
                  BrandPreferencesList(brands: controller.brands),
                  const SizedBox(height: 32),
                  ScanBanner(onPressed: controller.startScan),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
