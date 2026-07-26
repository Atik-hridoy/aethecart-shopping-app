import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';

class SellerAddProductTextField extends StatelessWidget {
  final String hint;
  final String? initialValue;
  final int maxLines;
  final TextInputType keyboardType;

  const SellerAddProductTextField({
    super.key,
    required this.hint,
    this.initialValue,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: initialValue != null ? TextEditingController(text: initialValue) : null,
      maxLines: maxLines,
      keyboardType: keyboardType,

      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.nunitoSans(fontSize: 13, color: AppColors.textSecondary),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.08)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.08)),
        ),
      ),
    );
  }
}
