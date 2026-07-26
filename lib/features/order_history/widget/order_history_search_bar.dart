import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/order_history_controller.dart';

class OrderHistorySearchBar extends GetView<OrderHistoryController> {
  const OrderHistorySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        final searchInput = Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            onChanged: controller.updateSearch,
            decoration: InputDecoration(
              hintText: 'Search orders...',
              hintStyle: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.outlineVariant,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: theme.colorScheme.outline,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            ),
          ),
        );

        final dropdownFilter = Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Obx(
            () => DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: controller.selectedTimeframe.value,
                icon: Icon(
                  Icons.expand_more_rounded,
                  color: theme.colorScheme.outline,
                ),
                dropdownColor: theme.colorScheme.surfaceContainerLow,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
                onChanged: controller.updateTimeframe,
                items: controller.timeframes.map((timeframe) {
                  return DropdownMenuItem<String>(
                    value: timeframe,
                    child: Text(timeframe),
                  );
                }).toList(),
              ),
            ),
          ),
        );

        return isMobile
            ? Column(
                children: [
                  searchInput,
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: dropdownFilter,
                  ),
                ],
              )
            : Row(
                children: [
                  Expanded(child: searchInput),
                  const SizedBox(width: 12),
                  dropdownFilter,
                ],
              );
      },
    );
  }
}
