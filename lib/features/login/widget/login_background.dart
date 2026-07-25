import 'package:flutter/material.dart';
import '../../../core/constants/app_assets.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({super.key});

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
          top: 0,
          right: 0,
          child: Container(
            width: size.width * 0.6,
            height: size.width * 0.6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Theme.of(context).colorScheme.primaryFixed.withValues(alpha: 0.2),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: size.width * 0.5,
            height: size.width * 0.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Theme.of(context).colorScheme.tertiaryFixed.withValues(alpha: 0.2),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
