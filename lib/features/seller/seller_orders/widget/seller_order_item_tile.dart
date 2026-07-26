import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';

class SellerOrderItemTile extends StatelessWidget {
  final Map<String, String> order;
  final VoidCallback onMarkShipped;

  const SellerOrderItemTile({
    super.key,
    required this.order,
    required this.onMarkShipped,
  });

  @override
  Widget build(BuildContext context) {
    final status = order['status'] ?? 'Pending';
    final isPending = status == 'Pending' || status == 'Processing';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.black.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                order['id'] ?? '',
                style: GoogleFonts.literata(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                  color: isPending ? Colors.orange.shade100 : AppColors.primary.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  status,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: isPending ? Colors.orange.shade900 : AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Customer: ${order['customer']}',
            style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
          ),
          const SizedBox(height: 2),
          Text(
            'Item: ${order['item']}',
            style: GoogleFonts.nunitoSans(fontSize: 12, color: AppColors.textSecondary),
          ),
          const SizedBox(height: 2),
          Text(
            'Ship to: ${order['address']}',
            style: GoogleFonts.nunitoSans(fontSize: 11, color: AppColors.textSecondary),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total: ${order['amount']}',
                style: GoogleFonts.literata(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.textPrimary),
              ),
              if (isPending)
                ElevatedButton.icon(
                  onPressed: onMarkShipped,
                  icon: const Icon(Icons.local_shipping, size: 14),
                  label: Text(
                    'MARK SHIPPED',
                    style: GoogleFonts.nunitoSans(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
