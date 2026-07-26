import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/app_strings.dart';
import '../controller/departments_controller.dart';
import '../widget/departments_app_bar.dart';
import '../widget/departments_bento_grid.dart';
import '../widget/departments_curated.dart';

class DepartmentsView extends GetView<DepartmentsController> {
  const DepartmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: DepartmentsAppBar(
        controller: controller,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Breadcrumb / Context
            Text(
              AppStrings.depTitle,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              AppStrings.depIntro,
              style: GoogleFonts.nunitoSans(
                fontSize: 16,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            
            // Bento Grid for Main Categories
            const DepartmentsBentoGrid(),
            
            const SizedBox(height: 64),
            
            // Curated Collections Section
            const DepartmentsCurated(),
            
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
