// src/core/widgets/hero/hero_bullet.dart
import 'package:flutter/material.dart';

class HeroBullet extends StatelessWidget {
  final String text;

  const HeroBullet({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.check_circle_outline, size: 18),
        const SizedBox(width: 8),
        Flexible(child: Text(text)),
      ],
    );
  }
}
