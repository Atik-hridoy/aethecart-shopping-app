import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/wishlist_controller.dart';

class WishlistAppBar extends GetView<WishlistController> implements PreferredSizeWidget {
  final VoidCallback onMenuPressed;

  const WishlistAppBar({super.key, required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface.withValues(alpha: 0.8),
      elevation: 0,
      scrolledUnderElevation: 4,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
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
        IconButton(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          onPressed: () {},
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
