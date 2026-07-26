import 'package:flutter/material.dart';

class TrackOrderMap extends StatelessWidget {
  const TrackOrderMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 256, // h-64 equivalent
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.2),
        ),
        image: const DecorationImage(
          image: NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuCV_p9UywdivVWGsidfQ7rRkXyAKOLV_EXZgwTUC9b8h1gKMjTkCguctgEwC3WRpdTx9fxKmONTlrV9hn-bdAUlzgx3hfx5ul-R_BH3X9nfKwN7vkOb24ov1Eyyn6z21Ur6mJmZhCzDEYlrwiTThTtkXrBKR1VfJZglkKDvC93YlRqx0WbvJDWxbejaS4bvvipJRSKjvbx13fabJGGKjLanBdWcmwb5gmhWOIXTwahAKt2ONtuRz2RhH7e3c_NE3rHCN9hw8nggV4Fi'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Pattern overlay
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black.withValues(alpha: 0.05), // simple darken to make text readable
            ),
          ),
          // Floating glass overlay
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.85),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'CURRENT LOCATION',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      Text(
                        'Sustainable Hub',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 32,
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'DESTINATION',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      Text(
                        'Your Home',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
