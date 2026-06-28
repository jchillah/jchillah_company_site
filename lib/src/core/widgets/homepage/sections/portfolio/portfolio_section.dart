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
          title: 'ASA Server Eye – ARK: Survival Ascended Server Tracker',
          subtitle:
              'Veröffentlichte Android-App zum Beobachten offizieller ARK: Survival Ascended Server mit Serverliste, Details und Favoriten.',
          status: 'Eigenprojekt · Android Release · Aktiv in Weiterentwicklung',
          techStack: 'Flutter · Dart · Dio · Riverpod · Firebase · GitHub Pages',
          longDescription:
              'ASA Server Eye ist mein erstes veröffentlichtes Android-App-Projekt. '
              'Die App hilft ARK: Survival Ascended Spielern dabei, offizielle Server schneller zu finden, '
              'Serverdaten zu prüfen und wichtige Server als Favoriten zu speichern.\n\n'
              'Technisch ist ASA Server Eye als Flutter-App aufgebaut und nutzt eine datengetriebene Architektur '
              'mit API-Anbindung, sauberer Feature-Struktur und modernen Mobile-App-Prinzipien. '
              'Das Projekt ist besonders wichtig für mein Portfolio, weil es nicht nur ein Lernprojekt ist, '
              'sondern ein echter Release mit Play-Store-, Datenschutz- und Monetarisierungsanforderungen.',
          features: [
            'Veröffentlichte Android-App für ARK: Survival Ascended Spieler',
            'Offizielle Serverliste mit relevanten Serverdaten',
            'Server-Detailansichten für bessere Entscheidungen vor dem Login',
            'Favoriten-Funktion für wichtige Server',
            'Flutter Cross-Platform-Codebasis',
            'Firebase-Integration für Nutzer- und App-Funktionen',
            'App-Store-, Datenschutz- und app-ads.txt-Setup',
            'Aktive Weiterentwicklung mit Fokus auf Alerts und bessere Server Intelligence',
          ],
          screenshotAssets: [
            'assets/images/asa_server_eye_1.png',
            'assets/images/asa_server_eye_2.png',
            'assets/images/asa_server_eye_3.png',
            'assets/images/asa_server_eye_4.png',
          ],
          appRepoUrl: 'https://github.com/jchillah/asa-server-eye',
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
          title: 'GameRadar – Gaming Discovery App (Eigenprojekt)',
          subtitle:
              'Moderne Android-App zum Entdecken, Verwalten und Analysieren von Videospielen – gebaut mit Jetpack Compose und RAWG API.',
          status: 'Abschlussprojekt · Android App Development'
          techStack:
              'Kotlin · Jetpack Compose · MVVM/MVI Hybrid · Room · Retrofit · RAWG API',
          longDescription:
              'GameRadar ist ein Android-Referenzprojekt: eine moderne Gaming-Discovery-App, '
              'mit der Nutzer Spiele durchsuchen, Favoriten und Wunschlisten verwalten und '
              'ihr eigenes Spieleverhalten analysieren können.\n\n'
              'Die App setzt auf eine MVVM/MVI-Hybridarchitektur mit klarem Layering: Präsentation mit '
              'Jetpack Compose, Domain-Layer für Geschäftslogik und ein Data-Layer mit Repository-Pattern, '
              'Room-Database und RAWG-API-Anbindung für Spieledaten.\n\n'
              'Technisch ist GameRadar ein Showcase-Projekt für moderne Android-Patterns, saubere Navigation, '
              'State-Management und robuste Fehlerbehandlung.',
          features: [
            'Eigenes Open-Source-Projekt für Android',
            'Spiele-Suche mit Filtern für Plattform, Genre, Bewertung und Release-Datum',
            'Favoriten und Wunschlisten mit lokaler Speicherung',
            'Detailseiten mit Beschreibungen, Screenshots, Ratings und Plattformen',
            'Statistiken und Charts zur Analyse persönlicher Spielvorlieben',
            'Dark-/Light-Mode und modernes Jetpack-Compose-UI',
            'MVVM/MVI-Hybrid-Architektur mit Repository-Pattern',
            'RAWG-API-Integration als reale externe Datenquelle',
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
        title: 'CryptoTracker – iOS Cryptocurrency Tracker',
        subtitle:
            'Native iOS-App zur Verfolgung von Kryptowährungen mit Echtzeitdaten, Charts und Favoriten.',
        status: 'Abschlussprojekt · iOS App Development',
        techStack:
            'Swift · SwiftUI · MVVM · Firebase · Firestore · SwiftData · Keychain · REST API',
        longDescription:
            'CryptoTracker ist eine native iOS-Anwendung, die im Rahmen meiner Weiterbildung '
            'zum Mobile App Developer entwickelt wurde. Die App ermöglicht das Verfolgen '
            'von Kryptowährungen in Echtzeit, das Analysieren historischer Preisdaten '
            'sowie das Speichern persönlicher Favoriten.\n\n'
            'Die Anwendung setzt auf eine moderne MVVM-Architektur, Firebase Authentication '
            'für die Benutzeranmeldung, Firestore zur Synchronisierung der Favoriten, '
            'SwiftData für lokale Persistenz sowie die sichere Speicherung sensibler '
            'API-Schlüssel über die iOS Keychain. Bei API-Ausfällen oder Limits greift '
            'die App auf lokal gespeicherte Daten zurück.',
        features: [
          'Echtzeit-Kryptodaten über REST API',
          'Interaktive Preisdiagramme',
          'Favoriten mit Firebase Firestore',
          'Firebase Authentication (Sign In / Sign Up)',
          'Lokale Datenspeicherung mit SwiftData',
          'Sichere API-Schlüsselverwaltung mit Keychain',
          'MVVM-Architektur mit sauberer Projektstruktur',
          'Offline-Fallback bei API-Limits',
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
        appRepoUrl: 'https://github.com/jchillah/CryptoTracker',
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Portfolio',
      subtitle:
          'Ausgewählte Projekte – vom veröffentlichten Android-Release bis zu technischen Showcase-Apps mit moderner Architektur.',
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 800;
          return Flex(
            direction: isWide ? Axis.horizontal : Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: PortfolioCard(
                  title: 'ASA Server Eye – ARK Server Tracker',
                  description:
                      'Veröffentlichte Android-App für ARK: Survival Ascended Serverdaten, '
                      'Favoriten und Server-Übersicht – gebaut mit Flutter.',
                  techStack: 'Flutter · Dart · Dio · Riverpod · Firebase',
                  status: 'Eigenprojekt · Android Release',
                  onTap: () => _openAsaServerEye(context),
                ),
              ),
              const SizedBox(width: 16, height: 16),
              Expanded(
                child: PortfolioCard(
                  title: 'GameRadar – Gaming Discovery App',
                  description:
                      'Moderne Android-App zum Entdecken, Verwalten und Analysieren von Games. '
                      'RAWG-API, lokale Speicherung und Jetpack Compose.',
                  techStack:
                      'Kotlin · Jetpack Compose · MVVM/MVI · RAWG API · Room',
                  status: 'Eigenprojekt · Showcase',
                  onTap: () => _openGameRadar(context),
                  iconAsset: 'assets/images/gameradar_app_icon.png',
                ),
              ),
              const SizedBox(width: 16, height: 16),
              Expanded(
                child: PortfolioCard(
                  title: 'CryptoTracker – Krypto Portfolio App',
                  description:
                      'Android-App zur Verfolgung von Kryptowährungen. REST-API Integration, '
                      'MVVM Architektur und modernes Compose-UI.',
                  techStack: 'Kotlin · Jetpack Compose · MVVM · REST API',
                  status: 'Eigenprojekt · Open Source',
                  onTap: () => _openCryptoTracker(context),
                  iconAsset: null,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
