// src/core/widgets/header.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  final bool isWide;

  const Header({super.key, required this.isWide});

  Future<void> _openMail() async {
    final uri = Uri(
      scheme: 'mailto',
      path: 'jchillah@gmail.com',
      query:
          'subject=App%20Projektanfrage%20-%20Jchillah%20Coding%20and%20Design%20Forge',
    );
    await launchUrl(uri, mode: LaunchMode.platformDefault);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: isWide
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.terminal, size: 28),
            const SizedBox(width: 8),
            Text(
              'Jchillah Coding & Design Forge',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 0.8,
              ),
            ),
          ],
        ),
        if (isWide) ...[
          const Spacer(),
          TextButton(onPressed: _openMail, child: const Text('Kontakt')),
          const SizedBox(width: 8),
          FilledButton(
            onPressed: _openMail,
            child: const Text('Projekt anfragen'),
          ),
        ],
      ],
    );
  }
}
