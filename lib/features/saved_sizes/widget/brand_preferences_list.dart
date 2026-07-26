import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/saved_sizes_controller.dart';
import 'brand_preference_card.dart';

class BrandPreferencesList extends StatelessWidget {
  const BrandPreferencesList({super.key, required this.brands});

  final List<BrandInfo> brands;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Brand Preferences',
              style: GoogleFonts.literata(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'View All 24 Brands',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 640;

            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: brands.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile ? 1 : 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                mainAxisExtent: 120,
              ),
              itemBuilder: (context, index) {
                return BrandPreferenceCard(brand: brands[index]);
              },
            );
          },
        ),
      ],
    );
  }
}
