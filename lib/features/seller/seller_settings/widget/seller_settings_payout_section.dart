import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';

class SellerSettingsPayoutSection extends StatelessWidget {
  const SellerSettingsPayoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PAYOUT & FINANCIALS',
          style: GoogleFonts.nunitoSans(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 10),
        _buildTile(
          icon: Icons.account_balance_outlined,
          title: 'Payout Method & Bank Account',
          subtitle: 'Stripe Express (•••• 4921) • Weekly Payouts',
          onTap: () {},
        ),
        _buildTile(
          icon: Icons.receipt_long_outlined,
          title: 'Tax Documents & Invoicing',
          subtitle: '1099-K & VAT Reports',
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black.withOpacity(0.05)),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: AppColors.primary),
        title: Text(
          title,
          style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: GoogleFonts.nunitoSans(fontSize: 11, color: AppColors.textSecondary),
        ),
        trailing: const Icon(Icons.chevron_right, size: 20, color: AppColors.textSecondary),
      ),
    );
  }
}
