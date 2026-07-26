import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/order_history_controller.dart';

class OrderStatusBadge extends StatelessWidget {
  const OrderStatusBadge({super.key, required this.status});

  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isOnTheWay = status == OrderStatus.onTheWay;
    final bgColor = isOnTheWay
        ? theme.colorScheme.tertiaryFixed
        : theme.colorScheme.primaryFixed;
    final textColor = isOnTheWay
        ? theme.colorScheme.onTertiaryFixedVariant
        : theme.colorScheme.onPrimaryFixedVariant;
    final icon = isOnTheWay ? Icons.local_shipping_rounded : Icons.check_circle_rounded;
    final label = isOnTheWay ? 'On the way' : 'Delivered';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: textColor),
          const SizedBox(width: 6),
          Text(
            label,
            style: GoogleFonts.nunitoSans(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
