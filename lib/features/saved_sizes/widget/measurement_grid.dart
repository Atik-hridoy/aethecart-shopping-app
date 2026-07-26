import 'package:flutter/material.dart';

import 'metric_progress_card.dart';
import 'physical_stats_card.dart';
import 'secondary_measurement_card.dart';

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

    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 640;

        return Column(
          children: [
            // Top Grid (Physical Stats + Chest + Waist)
            if (isMobile)
              Column(
                children: [
                  PhysicalStatsCard(height: height, weight: weight),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: MetricProgressCard(
                          label: 'Chest',
                          value: chest,
                          percent: 0.65,
                          barColor: theme.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: MetricProgressCard(
                          label: 'Waist',
                          value: waist,
                          percent: 0.50,
                          barColor: theme.colorScheme.tertiary,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            else
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: PhysicalStatsCard(height: height, weight: weight),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: MetricProgressCard(
                      label: 'Chest',
                      value: chest,
                      percent: 0.65,
                      barColor: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: MetricProgressCard(
                      label: 'Waist',
                      value: waist,
                      percent: 0.50,
                      barColor: theme.colorScheme.tertiary,
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 16),
            // Secondary Measurements Grid (Shoulder, Inseam, Neck, Arm Length)
            GridView.count(
              crossAxisCount: isMobile ? 2 : 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: isMobile ? 1.8 : 1.7,
              children: [
                SecondaryMeasurementCard(label: 'Shoulder', value: '$shoulder cm'),
                SecondaryMeasurementCard(label: 'Inseam', value: '$inseam cm'),
                SecondaryMeasurementCard(label: 'Neck', value: '$neck cm'),
                SecondaryMeasurementCard(label: 'Arm Length', value: '$armLength cm'),
              ],
            ),
          ],
        );
      },
    );
  }
}
