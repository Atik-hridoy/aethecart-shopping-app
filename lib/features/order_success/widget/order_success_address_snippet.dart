import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSuccessAddressSnippet extends StatelessWidget {
  const OrderSuccessAddressSnippet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.home_outlined, size: 20, color: Theme.of(context).colorScheme.tertiary),
              const SizedBox(width: 8),
              Text(
                'SHIPPING ADDRESS',
                style: GoogleFonts.nunitoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'Julianne Smith\n1284 Redwood Forest Way\nApt 4B, Portland, OR 97205',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
