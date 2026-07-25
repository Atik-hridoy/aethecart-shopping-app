import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_strings.dart';
import '../controller/collections_controller.dart';
import '../widget/collections_app_bar.dart';
import '../widget/collections_carousel.dart';

class CollectionsView extends GetView<CollectionsController> {
  const CollectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: CollectionsAppBar(
        onBackPressed: controller.goBack,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 32, bottom: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                AppStrings.collectionsIntro,
                style: GoogleFonts.nunitoSans(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: 48),
            const CollectionsCarousel(
              subtitle: AppStrings.col1Subtitle,
              title: AppStrings.col1Title,
              products: [
                ColProductItem(
                  imageUrl: AppAssets.colImg1,
                  name: AppStrings.colProduct1Name,
                  price: AppStrings.colProduct1Price,
                ),
                ColProductItem(
                  imageUrl: AppAssets.colImg2,
                  name: AppStrings.colProduct2Name,
                  price: AppStrings.colProduct2Price,
                ),
                ColProductItem(
                  imageUrl: AppAssets.colImg3,
                  name: AppStrings.colProduct3Name,
                  price: AppStrings.colProduct3Price,
                ),
              ],
            ),
            const SizedBox(height: 48),
            const CollectionsCarousel(
              subtitle: AppStrings.col2Subtitle,
              title: AppStrings.col2Title,
              products: [
                ColProductItem(
                  imageUrl: AppAssets.colImg4,
                  name: AppStrings.colProduct4Name,
                  price: AppStrings.colProduct4Price,
                ),
                ColProductItem(
                  imageUrl: AppAssets.colImg5,
                  name: AppStrings.colProduct5Name,
                  price: AppStrings.colProduct5Price,
                ),
                ColProductItem(
                  imageUrl: AppAssets.colImg4,
                  name: AppStrings.colProduct6Name,
                  price: AppStrings.colProduct6Price,
                ),
              ],
            ),
            const SizedBox(height: 48),
            const CollectionsCarousel(
              subtitle: AppStrings.col3Subtitle,
              title: AppStrings.col3Title,
              products: [
                ColProductItem(
                  imageUrl: AppAssets.colImg3,
                  name: AppStrings.colProduct7Name,
                  price: AppStrings.colProduct7Price,
                ),
                ColProductItem(
                  imageUrl: AppAssets.colImg1,
                  name: AppStrings.colProduct8Name,
                  price: AppStrings.colProduct8Price,
                ),
                ColProductItem(
                  imageUrl: AppAssets.colImg2,
                  name: AppStrings.colProduct9Name,
                  price: AppStrings.colProduct9Price,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
