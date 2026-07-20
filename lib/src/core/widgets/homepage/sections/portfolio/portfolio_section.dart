// src/core/widgets/homepage/sections/portfolio/portfolio_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/portfolio/portfolio_card.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';
import 'package:jchillah_company_site/src/features/projects/presentation/project_detail_page.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  void _openAsaServerEye(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const ProjectDetailPage(
          title: 'ASA Server Eye',
          subtitle:
              'Veröffentlichte Flutter-App zur Suche und Beobachtung offizieller ARK: Survival Ascended Server.',
          status: 'Android veröffentlicht · Aktive Weiterentwicklung',
          techStack: 'Flutter · Dart · Riverpod · Dio · Firebase',
          longDescription:
              'ASA Server Eye unterstützt Spieler dabei, offizielle ARK: Survival Ascended Server zu durchsuchen, relevante Serverinformationen aufzurufen und häufig genutzte Server als Favoriten zu verwalten.\n\n'
              'Das Projekt wurde als releasefähige Flutter-Anwendung mit Feature-First-Struktur, lokalisierter Benutzeroberfläche, Firebase-Anbindung und separaten Support- und Datenschutzseiten umgesetzt. Die Weiterentwicklung konzentriert sich auf Benachrichtigungen, Watchlists und aussagekräftigere Serverdaten.',
          features: [
            'Suche und Filterung offizieller Server',
            'Detailansichten mit relevanten Serverinformationen',
            'Favoriten für häufig genutzte Server',
            'Lokalisierte Benutzeroberfläche',
            'Firebase-gestützte App-Funktionen',
            'Release-, Support- und Datenschutz-Infrastruktur',
          ],
          screenshotAssets: [
            'assets/images/asa_server_eye_1.png',
            'assets/images/asa_server_eye_2.png',
            'assets/images/asa_server_eye_3.png',
            'assets/images/asa_server_eye_4.png',
          ],
          projectPageUrl: 'https://jchillah.github.io/asa-server-eye/',
          pitchDeckUrl: 'https://jchillah.github.io/asa-server-eye-pitchdeck/',
          appRepoUrl: 'https://github.com/jchillah/asa-server-eye',
          pitchRepoUrl:
              'https://github.com/jchillah/jchillah.github.io/tree/main/asa-server-eye-pitchdeck',
          privacyPolicyUrl:
              'https://jchillah.github.io/asa-server-eye-privacy-policy/',
        ),
      ),
    );
  }

  void _openGameRadar(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const ProjectDetailPage(
          title: 'GameRadar',
          subtitle:
              'Android-App zur Suche, Organisation und Analyse von Videospielen auf Basis der RAWG API.',
          status: 'Android-Abschlussprojekt · Open Source',
          techStack:
              'Kotlin · Jetpack Compose · MVVM/MVI · Room · Retrofit · Koin',
          longDescription:
              'GameRadar bündelt Spielesuche, Favoriten, Wunschlisten und persönliche Statistiken in einer modernen Android-Anwendung. Die RAWG API liefert Spieledaten, während Room wichtige Inhalte und persönliche Listen lokal verfügbar hält.\n\n'
              'Die Anwendung verwendet eine MVVM/MVI-Hybridarchitektur mit getrennten Data-, Domain- und Presentation-Bereichen. Zu den technischen Schwerpunkten zählen Paging, Filter und Sortierung, JSON-Export und -Import, Dark- und Light-Mode sowie robuste Lade- und Fehlerzustände.',
          features: [
            'Spielesuche mit Plattform-, Genre-, Bewertungs- und Datumsfiltern',
            'Favoriten und Wunschlisten mit lokaler Speicherung',
            'Detailansichten mit Beschreibungen, Medien und Bewertungen',
            'Offline-Cache mit Room',
            'JSON-Export und -Import persönlicher Listen',
            'Statistiken und Auswertungen',
            'Deutsch- und englischsprachige Benutzeroberfläche',
            'MVVM/MVI-Hybridarchitektur mit Repository-Pattern',
          ],
          screenshotAssets: [
            'assets/images/gameradar_1.png',
            'assets/images/gameradar_2.png',
            'assets/images/gameradar_3.png',
          ],
          pitchDeckUrl: 'https://jchillah.github.io/gameradar-pitchdeck/',
          appRepoUrl: 'https://github.com/jchillah/GameRadar',
          pitchRepoUrl: 'https://github.com/jchillah/gameradar-pitchdeck',
          privacyPolicyUrl:
              'https://jchillah.github.io/GameRadar-Privacy-Policy/',
        ),
      ),
    );
  }

  void _openCryptoTracker(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const ProjectDetailPage(
          title: 'CryptoTracker',
          subtitle:
              'Native SwiftUI-App zur Beobachtung von Kryptowährungen, Preisverläufen und persönlichen Favoriten.',
          status: 'iOS-Abschlussprojekt',
          techStack:
              'Swift · SwiftUI · MVVM · Firebase Auth · Firestore · SwiftData · Keychain',
          longDescription:
              'CryptoTracker stellt aktuelle Kryptowährungsdaten und historische Preisverläufe in einer nativen iOS-Oberfläche bereit. Nutzer können Coins beobachten, Favoriten speichern und Preisentwicklungen in Diagrammen auswerten.\n\n'
              'Die App basiert auf MVVM und verbindet Firebase Authentication mit Firestore für nutzerbezogene Favoriten. SwiftData dient als lokale Persistenz und als Fallback bei eingeschränkter API-Verfügbarkeit. API-Zugangsdaten werden über die iOS Keychain verwaltet.',
          features: [
            'Aktuelle Preise und Marktdaten über eine REST API',
            'Historische Preisverläufe in interaktiven Diagrammen',
            'Benutzeranmeldung mit Firebase Authentication',
            'Synchronisierte Favoriten mit Firestore',
            'Lokale Persistenz und Offline-Fallback mit SwiftData',
            'Sichere Verwaltung von API-Zugangsdaten mit Keychain',
            'MVVM-Struktur mit getrennten Views, ViewModels und Services',
          ],
          screenshotAssets: [
            'assets/images/cryptotracker_1.png',
            'assets/images/cryptotracker_2.png',
            'assets/images/cryptotracker_3.png',
            'assets/images/cryptotracker_4.png',
            'assets/images/cryptotracker_5.png',
            'assets/images/cryptotracker_6.png',
            'assets/images/cryptotracker_7.jpg',
          ],
          pitchDeckUrl: 'https://jchillah.github.io/cryptotracker-pitchdeck/',
          appRepoUrl: 'https://github.com/jchillah/CryptoTracker',
          pitchRepoUrl:
              'https://github.com/jchillah/jchillah.github.io/tree/main/cryptotracker-pitchdeck',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Referenzprojekte',
      subtitle:
          'Ausgewählte Anwendungen mit dokumentierter Architektur, realen Datenquellen und nachvollziehbarer technischer Umsetzung.',
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 800;
          return Flex(
            direction: isWide ? Axis.horizontal : Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: PortfolioCard(
                  title: 'ASA Server Eye',
                  description:
                      'Veröffentlichte Flutter-App für offizielle ARK: Survival Ascended Serverdaten, Suche, Details und Favoriten.',
                  techStack: 'Flutter · Riverpod · Dio · Firebase',
                  status: 'Android veröffentlicht',
                  onTap: () => _openAsaServerEye(context),
                ),
              ),
              const SizedBox(width: 16, height: 16),
              Expanded(
                child: PortfolioCard(
                  title: 'GameRadar',
                  description:
                      'Android-App für Spielesuche, Favoriten, Wunschlisten, Offline-Daten und persönliche Auswertungen.',
                  techStack:
                      'Kotlin · Jetpack Compose · MVVM/MVI · Room · RAWG API',
                  status: 'Android-Abschlussprojekt',
                  onTap: () => _openGameRadar(context),
                  iconAsset: 'assets/images/gameradar_app_icon.png',
                ),
              ),
              const SizedBox(width: 16, height: 16),
              Expanded(
                child: PortfolioCard(
                  title: 'CryptoTracker',
                  description:
                      'Native iOS-App für Kryptomarktdaten, Preisdiagramme, Authentifizierung und synchronisierte Favoriten.',
                  techStack: 'Swift · SwiftUI · Firebase · SwiftData',
                  status: 'iOS-Abschlussprojekt',
                  onTap: () => _openCryptoTracker(context),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
