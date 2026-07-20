// src/core/widgets/homepage/sections/about_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  static const String _cvUrl = 'https://my-personal-cv-app-65750.web.app/';
  static const String _logoAsset =
      'assets/images/branding/jchillah_logo_square.png';

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Section(
      title: 'Über den Entwickler',
      subtitle: 'Michael Winkler · Jchillah’s Design & Coding Forge',
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth >= 820;

          final aboutText = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ich bin Michael Winkler, App-Entwickler und Gründer von Jchillah’s Design & Coding Forge. '
                'Mein Schwerpunkt liegt auf mobilen Anwendungen und plattformübergreifenden Produktlösungen mit Flutter, Dart, Kotlin, Jetpack Compose, Swift und SwiftUI.\n\n'
                'Zu meinen Referenzprojekten gehören ASA Server Eye als veröffentlichte Android-App, GameRadar als umfangreiches Android-Abschlussprojekt und CryptoTracker als native iOS-Anwendung. '
                'Die Projekte decken unter anderem REST-API-Anbindungen, lokale Datenhaltung, Authentifizierung, Offline-Funktionen, responsives UI und strukturierte State-Verwaltung ab.\n\n'
                'Bei der Umsetzung achte ich auf nachvollziehbare Anforderungen, wartbare Architekturen, sichere Konfiguration, Versionsverwaltung, Fehlerbehandlung, Tests und eine saubere Vorbereitung für Veröffentlichung und Betrieb.\n\n'
                'Jchillah’s Design & Coding Forge steht für direkte Zusammenarbeit, transparente technische Entscheidungen und digitale Produkte, die funktional, verständlich und erweiterbar aufgebaut sind.',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white70,
                  height: 1.55,
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 12,
                runSpacing: 8,
                children: [
                  OutlinedButton.icon(
                    onPressed: () => _openUrl(_cvUrl),
                    icon: const Icon(Icons.badge_outlined),
                    label: const Text('Lebenslauf als Web-App'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => _openUrl('https://github.com/jchillah'),
                    icon: const Icon(Icons.code),
                    label: const Text('GitHub-Profil'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () =>
                        _openUrl('https://github.com/jchillah/asa-server-eye'),
                    icon: const Icon(Icons.visibility_outlined),
                    label: const Text('ASA Server Eye Repository'),
                  ),
                ],
              ),
            ],
          );

          final brandCard = Container(
            width: isWide ? 260 : double.infinity,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.34),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: const Color(0xFF00FF5F).withValues(alpha: 0.22),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF00FF5F).withValues(alpha: 0.08),
                  blurRadius: 28,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(26),
                  child: Image.asset(
                    _logoAsset,
                    width: isWide ? 170 : 150,
                    height: isWide ? 170 : 150,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) => Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.55),
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all(
                          color: const Color(
                            0xFF00FF5F,
                          ).withValues(alpha: 0.35),
                        ),
                      ),
                      child: const Text(
                        'JF',
                        style: TextStyle(
                          color: Color(0xFF00FF5F),
                          fontSize: 34,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  'Jchillah’s Forge',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF00FF5F),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Design. Code. Release.',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white60,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          );

          if (isWide) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: aboutText),
                const SizedBox(width: 28),
                brandCard,
              ],
            );
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [brandCard, const SizedBox(height: 20), aboutText],
          );
        },
      ),
    );
  }
}
