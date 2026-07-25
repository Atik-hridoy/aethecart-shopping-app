import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/departments_controller.dart';

class DepartmentsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final DepartmentsController controller;

  const DepartmentsAppBar({
    super.key,
    required this.controller,
  });

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isSearchExpanded = controller.isSearchExpanded.value;
      
      return AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: controller.goBack,
        ),
        title: isSearchExpanded
            ? TextField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Search departments...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
                  ),
                ),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
                cursorColor: Theme.of(context).colorScheme.primary,
              )
            : Text(
                'Terra',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                      letterSpacing: -0.5,
                    ),
              ),
        centerTitle: !isSearchExpanded,
        actions: [
          IconButton(
            icon: Icon(
              isSearchExpanded ? Icons.close : Icons.search,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: controller.toggleSearch,
          ),
          const SizedBox(width: 8),
        ],
      );
    });
  }
}
