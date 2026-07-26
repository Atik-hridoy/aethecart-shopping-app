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
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: theme.colorScheme.primary,
        ),
        title: Text(
          'Saved Sizes',
          style: GoogleFonts.literata(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: theme.colorScheme.primary,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 120),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ProfileHeaderCard(),
                  const SizedBox(height: 24),
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
                  const SizedBox(height: 24),
                  BrandPreferencesList(brands: controller.brands),
                  const SizedBox(height: 24),
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
