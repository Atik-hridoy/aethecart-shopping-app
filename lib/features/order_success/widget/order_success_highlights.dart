import 'package:flutter/material.dart';

import 'order_success_address_snippet.dart';
import 'order_success_updates_snippet.dart';

class OrderSuccessHighlights extends StatelessWidget {
  const OrderSuccessHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(child: OrderSuccessAddressSnippet()),
              SizedBox(width: 16),
              Expanded(child: OrderSuccessUpdatesSnippet()),
            ],
          );
        }
        return Column(
          children: const [
            OrderSuccessAddressSnippet(),
            SizedBox(height: 16),
            OrderSuccessUpdatesSnippet(),
          ],
        );
      },
    );
  }
}
