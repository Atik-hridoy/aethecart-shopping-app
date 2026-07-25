import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTextField extends StatefulWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final bool obscureText;
  final VoidCallback? onToggleVisibility;

  const LoginTextField({
    super.key,
    required this.label,
    required this.hint,
    this.isPassword = false,
    this.obscureText = false,
    this.onToggleVisibility,
  });

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
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
              fontSize: 12,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              transform: Matrix4.translationValues(0, _isFocused ? -2 : 0, 0),
              child: TextField(
                focusNode: _focusNode,
                obscureText: widget.isPassword ? widget.obscureText : false,
                style: GoogleFonts.nunitoSans(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                decoration: InputDecoration(
                  hintText: widget.hint,
                  hintStyle: GoogleFonts.nunitoSans(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
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
            ),
            if (widget.isPassword)
              IconButton(
                onPressed: widget.onToggleVisibility,
                icon: Icon(
                  widget.obscureText ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
