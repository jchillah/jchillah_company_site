// src/core/widgets/homepage/sections/contact_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';
import 'package:jchillah_company_site/src/features/contact/presentation/contact_page.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  void _openContactPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const ContactPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Section(
      title: 'Kontakt',
      subtitle: 'Projektanfragen und fachlicher Austausch.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Für eine erste Einschätzung senden Sie bitte eine kurze Beschreibung Ihres Vorhabens mit Ziel, gewünschtem Funktionsumfang, Zielplattformen und aktuellem Projektstand. '
            'Auf der Kontaktseite finden Sie alle direkten Kontaktmöglichkeiten sowie die Geschäftsanschrift.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.white70,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: () => _openContactPage(context),
            icon: const Icon(Icons.contact_mail_outlined),
            label: const Text('Projektanfrage starten'),
          ),
        ],
      ),
    );
  }
}
