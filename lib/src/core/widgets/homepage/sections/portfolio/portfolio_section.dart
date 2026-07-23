// src/core/widgets/homepage/sections/portfolio/portfolio_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/portfolio/portfolio_card.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';
import 'package:jchillah_company_site/src/features/projects/presentation/project_detail_page.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  static const _asaPitchDeckUrl =
      'https://jchillah.github.io/asa-server-eye-pitchdeck/';
  static const _asaNotionUrl =
      'https://believed-cobbler-41f.notion.site/ebd//324b529b25e7805094e4c5172976aec4';
  static const _gameRadarPitchDeckUrl =
      'https://jchillah.github.io/gameradar-pitchdeck/';
  static const _cryptoTrackerPitchDeckUrl =
      'https://jchillah.github.io/cryptotracker-pitchdeck/';
  static const _asaShowcaseUrl =
      'https://raw.githubusercontent.com/jchillah/asa-server-eye/main/assets/images/ASA_ServerEye.png';
  static const _gameRadarShowcaseUrl =
      'https://raw.githubusercontent.com/jchillah/GameRadar/main/img/GameRadar.png';
  static const _cryptoTrackerShowcaseUrl =
      'https://raw.githubusercontent.com/jchillah/CryptoTracker/main/img/CryptoTracker.png';

  Future<void> _openExternalUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Konnte URL nicht öffnen: $url');
    }
  }

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
            'Dokumentierter Produkt- und Architekturprozess',
          ],
          screenshotAssets: [
            'assets/images/asa_server_eye_1.png',
            'assets/images/asa_server_eye_2.png',
            'assets/images/asa_server_eye_3.png',
            'assets/images/asa_server_eye_4.png',
          ],
          showcaseImageUrl: _asaShowcaseUrl,
          projectPageUrl: 'https://jchillah.github.io/asa-server-eye/',
          pitchDeckUrl: _asaPitchDeckUrl,
          notionUrl: _asaNotionUrl,
          appRepoUrl: 'https://github.com/jchillah/asa-server-eye',
          pitchRepoUrl:
              'https://github.com/jchillah/jchillah.github.io/tree/main/asa-server-eye-pitchdeck',
          privacyPolicyUrl:
              'https://jchillah.github.io/asa-server-eye-privacy-policy/',
          supportEmail: 'asa.server.eye@gmail.com',
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
          showcaseImageUrl: _gameRadarShowcaseUrl,
          pitchDeckUrl: _gameRadarPitchDeckUrl,
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
              'Native SwiftUI-App für Kryptomarktdaten, Preisverläufe, News und persönliche Favoriten.',
          status: 'iOS Release Candidate · Portfolio-Projekt',
          techStack:
              'Swift · SwiftUI · MVVM · Firebase Auth · Firestore · SwiftData · GitHub Actions',
          longDescription:
              'CryptoTracker stellt aktuelle Kryptowährungsdaten, historische Preisverläufe und Krypto-News in einer nativen iOS-Oberfläche bereit. Nutzer können Favoriten speichern, mehrere Währungen auswählen und ihre Account-Einstellungen verwalten.\n\n'
              'Die App basiert auf MVVM mit explizitem View-State. Firebase Authentication und owner-only Firestore-Regeln schützen nutzerbezogene Favoriten und Einstellungen. SwiftData stellt getrennte Offline-Caches für Markt- und Chartdaten bereit. Ein CI-Workflow, Account-Löschung, Datenschutz- und Release-Dokumentation unterstützen den Weg zur App-Store-Veröffentlichung.',
          features: [
            'Aktuelle Preise und Marktdaten über CoinGecko',
            'USD-, EUR- und GBP-Darstellung',
            'Historische Preisverläufe mit Swift Charts',
            'Benutzeranmeldung mit Firebase Authentication',
            'Synchronisierte Favoriten mit owner-only Firestore-Regeln',
            'Lokale Persistenz und Offline-Fallback mit SwiftData',
            'Krypto-News über einen schlüsselfreien RSS-Feed',
            'Account-Löschung und sichere Release-Dokumentation',
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
          showcaseImageUrl: _cryptoTrackerShowcaseUrl,
          pitchDeckUrl: _cryptoTrackerPitchDeckUrl,
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
                  onPitchDeckTap: () => _openExternalUrl(_asaPitchDeckUrl),
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
                  onPitchDeckTap: () => _openExternalUrl(_gameRadarPitchDeckUrl),
                  iconAsset: 'assets/images/gameradar_app_icon.png',
                ),
              ),
              const SizedBox(width: 16, height: 16),
              Expanded(
                child: PortfolioCard(
                  title: 'CryptoTracker',
                  description:
                      'Native iOS-App für Kryptomarktdaten, Charts, News, Authentifizierung und synchronisierte Favoriten.',
                  techStack:
                      'Swift · SwiftUI · MVVM · Firebase · SwiftData',
                  status: 'iOS Release Candidate',
                  onTap: () => _openCryptoTracker(context),
                  onPitchDeckTap: () =>
                      _openExternalUrl(_cryptoTrackerPitchDeckUrl),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
