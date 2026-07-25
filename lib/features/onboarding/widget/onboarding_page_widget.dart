import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPageWidget extends StatelessWidget {
  final String imageUrl;
  final String subhead;
  final String title;
  final String description;
  final bool showGlassOverlay;
  final String? overlayText;

  const OnboardingPageWidget({
    super.key,
    required this.imageUrl,
    required this.subhead,
    required this.title,
    required this.description,
    this.showGlassOverlay = false,
    this.overlayText,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isSmallScreen = size.width < 360;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Hero Image
          Container(
            width: double.infinity,
            height: size.height * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Stack(
              children: [
                // Image
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Theme.of(context).colorScheme.surfaceContainerHighest,
                          child: const Center(child: Icon(Icons.broken_image)),
                        );
                      },
                    ),
                  ),
                ),
                // Bottom Gradient
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(40)),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.8),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
                // Optional Glass Overlay (Scanning animation proxy)
                if (showGlassOverlay)
                  Positioned(
                    bottom: 24,
                    left: 24,
                    right: 24,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.white.withValues(alpha: 0.4)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.filter_center_focus,
                              color: Theme.of(context).colorScheme.onPrimary,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 6,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: FractionallySizedBox(
                                      widthFactor: 0.66,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.primary,
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  overlayText ?? '',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    color: Theme.of(context).colorScheme.onSurface,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.05),
          
          // Subhead
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              subhead,
              style: GoogleFonts.nunitoSans(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0,
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          // Title
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          // Description
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.nunitoSans(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontSize: isSmallScreen ? 14 : 16,
              fontWeight: FontWeight.w300,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
