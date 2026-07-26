import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';

class CartAppBar extends GetView<CartController> implements PreferredSizeWidget {
  final VoidCallback onMenuPressed;

  const CartAppBar({super.key, required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface.withValues(alpha: 0.8),
      elevation: 0,
      scrolledUnderElevation: 4, // Shadow-md effect on scroll
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Theme.of(context).colorScheme.primary,
        ),
        onPressed: onMenuPressed,
      ),
      title: Text(
        'AetherCart',
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
      actions: [
        Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () {},
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: const Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
