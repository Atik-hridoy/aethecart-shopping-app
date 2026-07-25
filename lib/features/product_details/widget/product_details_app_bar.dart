import 'package:flutter/material.dart';

class ProductDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onBackPressed;
  
  const ProductDetailsAppBar({
    super.key,
    required this.onBackPressed,
  });

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface.withValues(alpha: 0.8),
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ColorFilter.mode(
            Colors.white.withValues(alpha: 0.1),
            BlendMode.srcOver,
          ),
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
      scrolledUnderElevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Theme.of(context).colorScheme.primary,
        ),
        onPressed: onBackPressed,
      ),
      title: Text(
        'AETHERCART',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
              letterSpacing: -0.5,
            ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {},
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
