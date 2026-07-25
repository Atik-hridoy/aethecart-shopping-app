import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/collection_details_controller.dart';
import '../widget/collection_details_app_bar.dart';
import '../widget/collection_details_filter.dart';
import '../widget/collection_details_grid.dart';
import '../widget/collection_details_hero.dart';
import '../widget/collection_details_insight.dart';

class CollectionDetailsView extends GetView<CollectionDetailsController> {
  const CollectionDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      extendBodyBehindAppBar: true,
      appBar: CollectionDetailsAppBar(
        onBackPressed: controller.goBack,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CollectionDetailsHero(),
            const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: CollectionDetailsInsight(),
            ),
            const SizedBox(height: 32),
            const CollectionDetailsFilter(),
            const SizedBox(height: 32),
            const CollectionDetailsGrid(),
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
