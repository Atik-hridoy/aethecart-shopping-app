import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BentoListAction extends StatelessWidget {
  final String text;
  
  const BentoListAction({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.arrow_right_alt,
          color: Colors.white.withValues(alpha: 0.8),
          size: 16,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: GoogleFonts.nunitoSans(
            color: Colors.white.withValues(alpha: 0.9),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
