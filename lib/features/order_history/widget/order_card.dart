import 'package:flutter/material.dart';

import '../controller/order_history_controller.dart';
import 'order_card_actions.dart';
import 'order_card_header.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.order});

  final OrderItem order;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.06),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isSmallScreen = constraints.maxWidth < 520;

          return Column(
            children: [
              OrderCardHeader(
                order: order,
                isSmallScreen: isSmallScreen,
              ),
              const SizedBox(height: 16),
              Divider(
                color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
                height: 1,
              ),
              const SizedBox(height: 16),
              OrderCardActions(
                order: order,
                isSmallScreen: isSmallScreen,
              ),
            ],
          );
        },
      ),
    );
  }
}
