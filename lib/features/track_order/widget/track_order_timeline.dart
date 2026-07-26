import 'package:flutter/material.dart';

class TrackOrderTimeline extends StatelessWidget {
  const TrackOrderTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            'Journey Status',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Stack(
            children: [
              // Background line
              Positioned(
                left: 11,
                top: 12,
                bottom: 24,
                child: Container(
                  width: 2,
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
              ),
              // Active line (covers 75% roughly, up to current step)
              Positioned(
                left: 11,
                top: 12,
                bottom: 64, // Stops at the 4th item roughly
                child: Container(
                  width: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              // Timeline items
              Column(
                children: [
                  _buildTimelineItem(
                    context,
                    title: 'Order Placed',
                    time: 'Yesterday, 10:24 AM',
                    isActive: true,
                    isCompleted: true,
                  ),
                  const SizedBox(height: 32),
                  _buildTimelineItem(
                    context,
                    title: 'Processed',
                    time: 'Yesterday, 02:45 PM',
                    isActive: true,
                    isCompleted: true,
                  ),
                  const SizedBox(height: 32),
                  _buildTimelineItem(
                    context,
                    title: 'Shipped from Sustainable Hub',
                    time: 'Today, 08:12 AM',
                    isActive: true,
                    isCompleted: true,
                  ),
                  const SizedBox(height: 32),
                  _buildTimelineItem(
                    context,
                    title: 'Out for Delivery',
                    time: 'Today, 11:30 AM',
                    isActive: true,
                    isCompleted: false, // pulsating dot
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTimelineItem(
    BuildContext context, {
    required String title,
    required String time,
    required bool isActive,
    required bool isCompleted,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: isActive ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.surfaceContainerHighest,
            shape: BoxShape.circle,
            border: Border.all(
              color: Theme.of(context).colorScheme.surface,
              width: 4,
            ),
          ),
          alignment: Alignment.center,
          child: isCompleted
              ? Icon(
                  Icons.check,
                  size: 12,
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              : (isActive
                  ? _PulsingDot(color: Theme.of(context).colorScheme.onPrimary)
                  : null),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: isActive && !isCompleted ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                time,
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PulsingDot extends StatefulWidget {
  final Color color;
  const _PulsingDot({required this.color});

  @override
  State<_PulsingDot> createState() => _PulsingDotState();
}

class _PulsingDotState extends State<_PulsingDot> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 800),
  )..repeat(reverse: true);

  late final Animation<double> _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
    CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Opacity(
            opacity: _scaleAnimation.value,
            child: child,
          ),
        );
      },
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: widget.color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
