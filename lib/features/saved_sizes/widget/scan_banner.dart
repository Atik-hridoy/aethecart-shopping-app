import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScanBanner extends StatelessWidget {
  const ScanBanner({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New: 3D Body Scan',
                  style: GoogleFonts.literata(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Improve fit accuracy to 99.8% with our new smartphone-based 3D scanning technology.',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.surface,
              foregroundColor: theme.colorScheme.primary,
            ),
            child: const Text('Start Scan'),
          ),
        ],
      ),
    );
  }
}
