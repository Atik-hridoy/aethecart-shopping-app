import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackOrderSupport extends StatelessWidget {
  const TrackOrderSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Need help?',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                'We\'re here for any questions.',
                style: GoogleFonts.nunitoSans(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          OutlinedButton.icon(
            onPressed: () {
              Get.snackbar(
                'Connecting',
                'Connecting to a sustainable support agent...',
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Theme.of(context).colorScheme.primary,
                colorText: Theme.of(context).colorScheme.onPrimary,
                margin: const EdgeInsets.all(16),
              );
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.surface,
              side: BorderSide(
                color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            icon: Icon(
              Icons.chat_bubble_outline,
              size: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: Text(
              'Contact',
              style: GoogleFonts.nunitoSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
