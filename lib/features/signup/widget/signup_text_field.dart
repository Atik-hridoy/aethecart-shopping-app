import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupTextField extends StatefulWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final bool obscureText;
  final VoidCallback? onToggleVisibility;

  const SignupTextField({
    super.key,
    required this.label,
    required this.hint,
    this.isPassword = false,
    this.obscureText = false,
    this.onToggleVisibility,
  });

  @override
  State<SignupTextField> createState() => _SignupTextFieldState();
}

class _SignupTextFieldState extends State<SignupTextField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0, bottom: 8.0),
          child: Text(
            widget.label.toUpperCase(),
            style: GoogleFonts.nunitoSans(
              fontSize: 10,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              color: _isFocused 
                  ? Theme.of(context).colorScheme.primary 
                  : Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            TextField(
              focusNode: _focusNode,
              obscureText: widget.isPassword ? widget.obscureText : false,
              style: GoogleFonts.nunitoSans(
                color: Theme.of(context).colorScheme.onSurface,
              ),
              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: GoogleFonts.nunitoSans(
                  color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.4),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            if (widget.isPassword)
              IconButton(
                onPressed: widget.onToggleVisibility,
                icon: Icon(
                  widget.obscureText ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                  color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.6),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
