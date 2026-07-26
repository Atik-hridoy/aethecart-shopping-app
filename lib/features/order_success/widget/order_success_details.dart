import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_assets.dart';
import 'order_success_info_item.dart';
import 'order_success_product_item.dart';

class OrderSuccessDetails extends StatelessWidget {
  const OrderSuccessDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.06),
            blurRadius: 20,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: OrderSuccessInfoItem(label: 'Order Number', value: '#AE-9823412'),
              ),
              const Expanded(
                child: OrderSuccessInfoItem(label: 'Estimated Delivery', value: 'Friday, Oct 24th'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),
          Text(
            'ORDER SUMMARY',
            style: GoogleFonts.nunitoSans(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 16),
          const OrderSuccessProductItem(
            title: 'Evergreen Organic Sweatshirt',
            subtitle: 'Size: M • Qty: 1',
            price: '\$84.00',
            imagePath: AppAssets.colImg1,
          ),
          const SizedBox(height: 16),
          const OrderSuccessProductItem(
            title: 'Terra Cotta Morning Mug',
            subtitle: 'Color: Sand • Qty: 2',
            price: '\$32.00',
            imagePath: AppAssets.colImg2,
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping & Taxes included',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    'Total',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                ],
              ),
              Text(
                '\$116.00',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
