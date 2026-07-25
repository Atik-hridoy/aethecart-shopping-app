import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_strings.dart';

class CollectionDetailsGrid extends StatelessWidget {
  const CollectionDetailsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 24,
        crossAxisSpacing: 24,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          final isEven = index % 2 == 0;
          
          return Padding(
            padding: EdgeInsets.only(top: isEven ? 0 : 32.0),
            child: _ProductCard(
              imageUrl: _getImageForIndex(index),
              name: _getNameForIndex(index),
              price: _getPriceForIndex(index),
            ),
          );
        },
      ),
    );
  }

  String _getImageForIndex(int index) {
    switch (index) {
      case 0: return AppAssets.colDetailProd1;
      case 1: return AppAssets.colDetailProd2;
      case 2: return AppAssets.colDetailProd3;
      case 3: return AppAssets.colDetailProd4;
      default: return AppAssets.colDetailProd1;
    }
  }

  String _getNameForIndex(int index) {
    switch (index) {
      case 0: return AppStrings.colDetailProd1Name;
      case 1: return AppStrings.colDetailProd2Name;
      case 2: return AppStrings.colDetailProd3Name;
      case 3: return AppStrings.colDetailProd4Name;
      default: return AppStrings.colDetailProd1Name;
    }
  }

  String _getPriceForIndex(int index) {
    switch (index) {
      case 0: return AppStrings.colDetailProd1Price;
      case 1: return AppStrings.colDetailProd2Price;
      case 2: return AppStrings.colDetailProd3Price;
      case 3: return AppStrings.colDetailProd4Price;
      default: return AppStrings.colDetailProd1Price;
    }
  }
}

class _ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;

  const _ProductCard({
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 3 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.05),
                  blurRadius: 20,
                  offset: const Offset(0, 4),
                )
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 12,
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.9),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          name,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 2),
        Text(
          price,
          style: GoogleFonts.nunitoSans(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            fontSize: 14,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
