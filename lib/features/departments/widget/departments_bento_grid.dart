import 'package:flutter/material.dart';

import 'bento/apparel_bento_card.dart';
import 'bento/beauty_bento_card.dart';
import 'bento/home_bento_card.dart';
import 'bento/sportswear_bento_card.dart';

class DepartmentsBentoGrid extends StatelessWidget {
  const DepartmentsBentoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ApparelBentoCard(),
        const SizedBox(height: 16),
        Row(
          children: const [
            Expanded(child: SportswearBentoCard()),
            SizedBox(width: 16),
            Expanded(child: HomeBentoCard()),
          ],
        ),
        const SizedBox(height: 16),
        const BeautyBentoCard(),
      ],
    );
  }
}
