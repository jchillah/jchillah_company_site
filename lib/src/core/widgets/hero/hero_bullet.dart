// src/core/widgets/hero/hero_bullet.dart
import 'package:flutter/material.dart';

class HeroBullet extends StatelessWidget {
  final String text;

  const HeroBullet({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: const Color(0xFF00FF5F).withOpacity(0.12),
              borderRadius: BorderRadius.circular(999),
              border: Border.all(
                color: const Color(0xFF00FF5F).withOpacity(0.55),
              ),
            ),
            child: const Icon(
              Icons.check_rounded,
              size: 16,
              color: Color(0xFF00FF5F),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.white.withOpacity(0.82),
                height: 1.35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
