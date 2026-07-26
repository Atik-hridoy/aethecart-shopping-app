import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';

class SellerAnalyticsChart extends StatelessWidget {
  const SellerAnalyticsChart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> monthlyData = [
      {'month': 'Jan', 'val': 0.4},
      {'month': 'Feb', 'val': 0.55},
      {'month': 'Mar', 'val': 0.35},
      {'month': 'Apr', 'val': 0.75},
      {'month': 'May', 'val': 0.90},
      {'month': 'Jun', 'val': 0.65},
    ];

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'REVENUE TREND',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$48,250.00',
                    style: GoogleFonts.literata(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '+18.4% vs last mo',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: monthlyData.map((data) {
                final double heightFactor = data['val'] as double;
                final String month = data['month'] as String;
                final bool isPeak = heightFactor == 0.90;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 28,
                      height: 100 * heightFactor,
                      decoration: BoxDecoration(
                        color: isPeak ? AppColors.primary : AppColors.primary.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      month,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 11,
                        fontWeight: isPeak ? FontWeight.bold : FontWeight.normal,
                        color: isPeak ? AppColors.primary : AppColors.textSecondary,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
