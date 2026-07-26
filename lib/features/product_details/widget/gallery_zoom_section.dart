import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_assets.dart';
import 'texture_zoom_modal.dart';

class GalleryZoomSection extends StatelessWidget {
  final PageController pageController;

  const GalleryZoomSection({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (_) => const TextureZoomModal(),
                ),
                child: const TextureThumbnail(),
              ),
              const SizedBox(width: 24),
              const TextureInfo(),
            ],
          ),
          if (MediaQuery.of(context).size.width > 768)
            DesktopNavigation(pageController: pageController),
        ],
      ),
    );
  }
}

class TextureThumbnail extends StatelessWidget {
  const TextureThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.06),
            blurRadius: 20,
            offset: const Offset(0, 4),
          )
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(AppAssets.pdpImg2, fit: BoxFit.cover),
          Container(
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.05),
            child: Icon(
              Icons.zoom_in,
              color: Colors.white.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }
}

class TextureInfo extends StatelessWidget {
  const TextureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ZOOM VIEW',
          style: GoogleFonts.nunitoSans(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Texture Detail',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        const SizedBox(height: 2),
        Text(
          'Examine our hand-loomed weave',
          style: GoogleFonts.nunitoSans(
            fontSize: 12,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class DesktopNavigation extends StatelessWidget {
  final PageController pageController;

  const DesktopNavigation({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _NavButton(
          icon: Icons.chevron_left,
          onTap: () {
            pageController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        const SizedBox(width: 8),
        _NavButton(
          icon: Icons.chevron_right,
          onTap: () {
            pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
      ],
    );
  }
}

class _NavButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _NavButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
        ),
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
