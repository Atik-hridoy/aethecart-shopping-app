import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhysicalStatsCard extends StatelessWidget {
  const PhysicalStatsCard({
    super.key,
    required this.height,
    required this.weight,
  });

  final int height;
  final int weight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.2),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.04),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Physical Stats',
                style: GoogleFonts.literata(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              Icon(
                Icons.straighten_rounded,
                color: theme.colorScheme.primary,
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildStatRow(theme, 'Height', height, 'cm'),
          const SizedBox(height: 12),
          _buildStatRow(theme, 'Weight', weight, 'kg'),
        ],
      ),
    );
  }

  Widget _buildStatRow(ThemeData theme, String label, int value, String unit) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          RichText(
            text: TextSpan(
              style: GoogleFonts.literata(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
              children: [
                TextSpan(text: '$value '),
                TextSpan(
                  text: unit,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
