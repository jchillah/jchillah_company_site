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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Section(
      title: 'Über mich',
      subtitle: 'Wer hinter Jchillah Coding & Design Forge steckt',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ich bin Michael Winkler – angehender Fachinformatiker für Anwendungsentwicklung '
            'und fokussierter Junior Mobile Developer. Mein Schwerpunkt liegt auf modernen '
            'Mobile-Stacks: Kotlin mit Jetpack Compose für Android, Flutter für Cross-Platform '
            '(iOS, Android, Web) und langfristig SwiftUI für native iOS-Entwicklung.\n\n'
            'Mit GameRadar habe ich ein eigenes, praxisnahes Referenzprojekt aufgebaut: eine offene '
            'Android-App, in der ich eine MVVM/MVI-Hybridarchitektur, die Anbindung an eine echte '
            'API (RAWG), Offline-First mit Room und ein sauberes, edge-to-edge Compose-UI umsetze. '
            'Dieses Projekt nutze ich, um mein Wissen in Architektur, State-Management und '
            'sauberer Code-Struktur kontinuierlich zu vertiefen.\n\n'
            'Neben GameRadar arbeite ich an kleineren Business- und WaWi-Konzepten (z.B. WiWa System) '
            'sowie Ideen rund um ARK: ASA Companion-Apps. Damit decke ich sowohl klassische '
            'Business-Cases als auch Nischen-Apps für Gamer ab – immer mit dem Ziel, klar '
            'strukturierten, verständlichen Code zu schreiben, der sich später gut erweitern lässt.\n\n'
            'Wenn du jemanden suchst, der nicht nur “irgendwie eine App hinbaut”, sondern gemeinsam '
            'mit dir die Anforderungen durchdenkt, ein MVP sauber strukturiert und transparent arbeitet, '
            'bist du bei Jchillah Coding & Design Forge genau richtig.',
            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 12,
            runSpacing: 8,
            children: [
              FilledButton.icon(
                onPressed: () =>
                    _openUrl('https://my-personal-cv-app-65750.web.app/'),
                icon: const Icon(Icons.person),
                label: const Text('CV als Web-App öffnen'),
              ),
              OutlinedButton.icon(
                onPressed: () => _openUrl('https://github.com/jchillah'),
                icon: const Icon(Icons.code),
                label: const Text('GitHub Profil'),
              ),
              OutlinedButton.icon(
                onPressed: () =>
                    _openUrl('https://github.com/jchillah/GameRadar'),
                icon: const Icon(Icons.videogame_asset_outlined),
                label: const Text('GameRadar auf GitHub'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
