import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/explore_controller.dart';

class ExploreCuratedBrands extends StatelessWidget {
  const ExploreCuratedBrands({super.key, required this.controller});

  final ExploreController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Curated Brands',
            style: GoogleFonts.literata(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 96,
          child: Obx(() {
            final brands = controller.currentBrands;

            return ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: brands.length,
              separatorBuilder: (context, index) => const SizedBox(width: 24),
              itemBuilder: (context, index) {
                final brand = brands[index];

                return InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(12),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 64,
                        height: 64,
                        child: Image.network(
                          brand.logoUrl,
                          fit: BoxFit.contain,
                          colorBlendMode: BlendMode.multiply,
                          errorBuilder: (_, _, _) => Center(
                            child: Text(
                              brand.name[0],
                              style: GoogleFonts.literata(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        brand.name.toUpperCase(),
                        style: GoogleFonts.nunitoSans(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}
