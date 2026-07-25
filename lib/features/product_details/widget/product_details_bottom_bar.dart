import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';

class ProductDetailsBottomBar extends StatelessWidget {
  const ProductDetailsBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.9),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 2,
                ),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                height: 56,
                child: FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_basket_outlined),
                  label: const Text(
                    AppStrings.pdpAdd,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: FilledButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
