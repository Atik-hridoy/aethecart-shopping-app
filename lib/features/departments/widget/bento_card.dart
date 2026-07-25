import 'package:flutter/material.dart';

class BentoCard extends StatelessWidget {
  final double height;
  final String imageUrl;
  final List<Color> gradientColors;
  final Widget content;

  const BentoCard({
    super.key,
    required this.height,
    required this.imageUrl,
    required this.gradientColors,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: gradientColors,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: content,
          ),
        ],
      ),
    );
  }
}
