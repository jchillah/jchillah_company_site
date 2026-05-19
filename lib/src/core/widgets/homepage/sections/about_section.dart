// src/core/widgets/homepage/sections/about_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  Future<void> _openMail() async {
    final uri = Uri(
      scheme: 'mailto',
      path: 'jchillah@gmail.com',
      query:
          'subject=Projektanfrage%20-%20Jchillah%20Coding%20%26%20Design%20Forge',
    );
    await launchUrl(uri, mode: LaunchMode.platformDefault);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Section(
      title: 'Über mich',
      subtitle: 'Michael Winkler · Jchillah Coding & Design Forge',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ich bin Michael Winkler, App-Entwickler und Gründer von Jchillah Coding & Design Forge. '
            'Mein Fokus liegt auf modernen Mobile- und Web-App-Projekten mit Flutter, Dart, Kotlin, '
            'Jetpack Compose und langfristig auch SwiftUI.\n\n'
            'Mit ASA Server Eye habe ich mein erstes veröffentlichtes Android-Projekt umgesetzt: '
            'eine Companion-App für ARK: Survival Ascended, mit der Spieler offizielle Serverdaten prüfen, '
            'Favoriten speichern und schneller entscheiden können, welchen Server sie betreten möchten.\n\n'
            'Ich arbeite produktorientiert: klare Architektur, verständliche Oberflächen, saubere Projektstruktur, '
            'GitHub-Workflow, App-Store-Vorbereitung, Datenschutzseiten und technische Grundlagen wie app-ads.txt gehören für mich zum Gesamtpaket.\n\n'
            'Jchillah Coding & Design Forge steht für praktische Apps, Gaming-Tools und digitale Produkte, '
            'die Schritt für Schritt professioneller, stabiler und marktfähiger werden.',
            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 12,
            runSpacing: 8,
            children: [
              FilledButton.icon(
                onPressed: _openMail,
                icon: const Icon(Icons.mail_outline),
                label: const Text('Kontakt aufnehmen'),
              ),
              OutlinedButton.icon(
                onPressed: () => _openUrl('https://github.com/jchillah'),
                icon: const Icon(Icons.code),
                label: const Text('GitHub Profil'),
              ),
              OutlinedButton.icon(
                onPressed: () =>
                    _openUrl('https://github.com/jchillah/asa-server-eye'),
                icon: const Icon(Icons.visibility_outlined),
                label: const Text('ASA Server Eye auf GitHub'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
