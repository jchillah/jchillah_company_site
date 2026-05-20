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
      subtitle: 'Alle Kontaktmöglichkeiten an einem Ort.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Für Projektanfragen, Rückfragen oder eine erste Abstimmung findest du auf der Kontaktseite E-Mail, Telefon, SMS, WhatsApp und die postalische Adresse.',
            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: () => _openContactPage(context),
            icon: const Icon(Icons.contact_mail_outlined),
            label: const Text('Kontaktseite öffnen'),
          ),
        ],
      ),
    );
  }
}
