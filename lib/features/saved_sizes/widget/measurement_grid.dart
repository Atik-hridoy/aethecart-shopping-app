import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MeasurementGrid extends StatelessWidget {
  const MeasurementGrid({
    super.key,
    required this.height,
    required this.weight,
    required this.chest,
    required this.waist,
    required this.shoulder,
    required this.inseam,
    required this.neck,
    required this.armLength,
  });

  final int height;
  final int weight;
  final int chest;
  final int waist;
  final int shoulder;
  final int inseam;
  final int neck;
  final int armLength;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final stats = [
      _MeasurementItem('Height', '$height cm', theme.colorScheme.primary),
      _MeasurementItem('Weight', '$weight kg', theme.colorScheme.tertiary),
      _MeasurementItem('Chest', '$chest cm', theme.colorScheme.primary),
      _MeasurementItem('Waist', '$waist cm', theme.colorScheme.secondary),
      _MeasurementItem('Shoulder', '$shoulder cm', theme.colorScheme.primary),
      _MeasurementItem('Inseam', '$inseam cm', theme.colorScheme.tertiary),
      _MeasurementItem('Neck', '$neck cm', theme.colorScheme.primary),
      _MeasurementItem('Arm Length', '$armLength cm', theme.colorScheme.secondary),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: stats.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.8,
      ),
      itemBuilder: (context, index) {
        final item = stats[index];
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.label,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                item.value,
                style: GoogleFonts.nunitoSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: item.color,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _MeasurementItem {
  const _MeasurementItem(this.label, this.value, this.color);

  final String label;
  final String value;
  final Color color;
}
