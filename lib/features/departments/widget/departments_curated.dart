import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_strings.dart';

class DepartmentsCurated extends StatelessWidget {
  const DepartmentsCurated({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.depCuratedTitle,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  AppStrings.depCuratedSub,
                  style: GoogleFonts.nunitoSans(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    AppStrings.homeViewAll,
                    style: GoogleFonts.nunitoSans(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).colorScheme.primary,
                    size: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 24,
          crossAxisSpacing: 16,
          childAspectRatio: 0.8,
          children: const [
            _CuratedItem(
              imageUrl: AppAssets.depCurated1,
              title: AppStrings.depCurated1Title,
              subtitle: AppStrings.depCurated1Sub,
            ),
            _CuratedItem(
              imageUrl: AppAssets.depCurated2,
              title: AppStrings.depCurated2Title,
              subtitle: AppStrings.depCurated2Sub,
            ),
            _CuratedItem(
              imageUrl: AppAssets.depCurated3,
              title: AppStrings.depCurated3Title,
              subtitle: AppStrings.depCurated3Sub,
            ),
            _CuratedItem(
              imageUrl: AppAssets.depCurated4,
              title: AppStrings.depCurated4Title,
              subtitle: AppStrings.depCurated4Sub,
            ),
          ],
        ),
      ],
    );
  }
}

class _CuratedItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const _CuratedItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: GoogleFonts.nunitoSans(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
