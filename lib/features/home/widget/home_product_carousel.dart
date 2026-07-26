import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeProductCarousel extends StatelessWidget {
  final String title;
  final String actionText;
  final List<ProductItem> products;

  const HomeProductCarousel({
    super.key,
    required this.title,
    required this.actionText,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      actionText,
                      style: GoogleFonts.nunitoSans(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward,
                      color: Theme.of(context).colorScheme.primary,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: products.map((product) {
              return Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: _ProductCard(item: product),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class ProductItem {
  final String imageUrl;
  final String name;
  final String price;
  final String? badge;

  const ProductItem({
    required this.imageUrl,
    required this.name,
    required this.price,
    this.badge,
  });
}

class _ProductCard extends StatelessWidget {
  final ProductItem item;

  const _ProductCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 192, // w-48 in tailwind
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 240, // aspect 4/5 for 192 width
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.2),
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow.withValues(alpha: 0.06),
                  blurRadius: 20,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  item.imageUrl,
                  fit: BoxFit.cover,
                ),
                if (item.badge != null)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.9),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        item.badge!,
                        style: GoogleFonts.nunitoSans(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            item.name,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            item.price,
            style: GoogleFonts.nunitoSans(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
