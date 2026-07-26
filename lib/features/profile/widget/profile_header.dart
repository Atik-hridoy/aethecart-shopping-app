import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmall = constraints.maxWidth < 600;
        
        final children = [
          _buildAvatar(context),
          SizedBox(width: isSmall ? 0 : 24, height: isSmall ? 24 : 0),
          _buildInfo(context, isSmall),
        ];

        return Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.04),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: isSmall
              ? Column(
                  children: children,
                )
              : Row(
                  children: children,
                ),
        );
      },
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 128,
          height: 128,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Theme.of(context).colorScheme.primaryContainer.withValues(alpha: 0.3),
              width: 4,
            ),
            image: const DecorationImage(
              image: NetworkImage(
                'https://lh3.googleusercontent.com/aida-public/AB6AXuB7p4Jeo2RfYXGKGC43cvBfYY7Tkw_Z0BQCkre2WqVq8LOiNr9Q9mU5qOsp5yfnsDk_ypJ1g0e5NLaiJ0m1Sp-BftMM6EOZQiyI9K4FibHe4MEryJub3eGDnmWz114PpuUqYUHnJZ9BW-Diu-QOLI0DfvCOz2R-HosLSCiaO0dSdUNp8bJKLTb1LXRLW5klIlwGPz8fJY7ow7CBw9OqOC3XoDVIXkb9hMoHB3-yVhZcuEvvYJUklRcOWiNaaFEY6PpsB0HzoIc_MBd_',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 4,
          right: 4,
          child: Material(
            elevation: 4,
            shape: const CircleBorder(),
            color: Theme.of(context).colorScheme.primary,
            child: InkWell(
              onTap: () {},
              customBorder: const CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.edit_outlined,
                  size: 16,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfo(BuildContext context, bool isSmall) {
    return Column(
      crossAxisAlignment: isSmall ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          'Alex Rivera',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: isSmall ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                'GOLD MEMBER',
                style: GoogleFonts.nunitoSans(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Since 2024',
              style: GoogleFonts.nunitoSans(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
