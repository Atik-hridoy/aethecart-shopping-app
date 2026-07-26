import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/order_history_controller.dart';
import 'order_status_badge.dart';

class OrderCardHeader extends StatelessWidget {
  const OrderCardHeader({
    super.key,
    required this.order,
    required this.isSmallScreen,
  });

  final OrderItem order;
  final bool isSmallScreen;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final imageSize = isSmallScreen ? 80.0 : 100.0;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Thumbnail Image
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            order.imageUrl,
            width: imageSize,
            height: imageSize,
            fit: BoxFit.cover,
            errorBuilder: (_, _, _) => Container(
              width: imageSize,
              height: imageSize,
              color: theme.colorScheme.surfaceContainer,
              alignment: Alignment.center,
              child: const Icon(Icons.image_not_supported_outlined),
            ),
          ),
        ),
        SizedBox(width: isSmallScreen ? 12 : 20),
        // Content Details
        Expanded(
          child: isSmallScreen
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OrderStatusBadge(status: order.status),
                    const SizedBox(height: 6),
                    Text(
                      order.title,
                      style: GoogleFonts.literata(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 6,
                      runSpacing: 4,
                      children: [
                        Text(
                          'Order ${order.id}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.outlineVariant,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          order.date,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            order.title,
                            style: GoogleFonts.literata(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 8,
                            runSpacing: 4,
                            children: [
                              Text(
                                'Order ${order.id}',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                width: 4,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.outlineVariant,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Text(
                                order.date,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    OrderStatusBadge(status: order.status),
                  ],
                ),
        ),
      ],
    );
  }
}
