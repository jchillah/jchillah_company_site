// src/core/widgets/homepage/sections/contact_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _openMail() async {
    final uri = Uri(
      scheme: 'mailto',
      path: 'jchillah@gmail.com',
      query:
          'subject=App%20Projektanfrage%20-%20Jchillah%20Coding%20and%20Design%20Forge',
    );
    await launchUrl(uri, mode: LaunchMode.platformDefault);
  }

  Future<void> _openGithub() async {
    final uri = Uri.parse('https://github.com/jchillah');
    await launchUrl(uri, mode: LaunchMode.platformDefault);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Section(
      title: 'Kontakt',
      subtitle: 'Bereit, deine App-Idee zu schmieden?',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Erzähl mir kurz, wer du bist, was du machst und welche Art von App '
            'du dir vorstellst. Ob du noch ganz am Anfang stehst oder bereits '
            'erste Konzepte hast – wir finden gemeinsam den nächsten sinnvollen Schritt.',
            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              FilledButton.icon(
                onPressed: _openMail,
                icon: const Icon(Icons.email_outlined),
                label: const Text('E-Mail schreiben'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
