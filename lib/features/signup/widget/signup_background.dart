import 'package:flutter/material.dart';
import '../../../core/constants/app_assets.dart';

class SignupBackground extends StatelessWidget {
  const SignupBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    
    return Stack(
      fit: StackFit.expand,
      children: [
        Opacity(
          opacity: 0.04,
          child: Image.network(
            AppAssets.splashTextureUrl,
            repeat: ImageRepeat.repeat,
          ),
        ),
        Positioned(
          top: -size.width * 0.25,
          left: -size.width * 0.25,
          child: Container(
            width: size.width * 0.8,
            height: size.width * 0.8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                  blurRadius: 80,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -size.width * 0.25,
          right: -size.width * 0.25,
          child: Container(
            width: size.width * 0.7,
            height: size.width * 0.7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.05),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.1),
                  blurRadius: 80,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
