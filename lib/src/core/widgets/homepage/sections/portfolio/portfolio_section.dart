// src/core/widgets/homepage/sections/portfolio/portfolio_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/portfolio/portfolio_card.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';
import 'package:jchillah_company_site/src/features/projects/presentation/project_detail_page.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  void _openGameRadar(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const ProjectDetailPage(
          title: 'GameRadar – Gaming Discovery App (Eigenprojekt)',
          subtitle:
              'Moderne Android-App zum Entdecken, Verwalten und Analysieren von Videospielen – gebaut mit Jetpack Compose und RAWG API.',
          status: 'Eigenprojekt · Open Source · Aktiv in Entwicklung',
          techStack:
              'Kotlin · Jetpack Compose · MVVM/MVI Hybrid · Room · Retrofit · RAWG API',
          longDescription:
              'GameRadar ist mein zentrales Android-Referenzprojekt: eine moderne Gaming-Discovery-App, '
              'mit der Nutzer über 350.000 Spiele durchsuchen, Favoriten & Wunschlisten verwalten und '
              'ihr eigenes Spieleverhalten analysieren können. \n\n'
              'Die App setzt auf eine MVVM/MVI-Hybridarchitektur mit klarem Layering: Präsentation mit '
              'Jetpack Compose, Domain-Layer für Geschäftslogik und ein Data-Layer mit Repository-Pattern, '
              'Room-Database (Offline-First) und RAWG-API-Anbindung für die Spieledaten. \n\n'
              'Technisch ist GameRadar für mich ein Übungs- und Showcase-Projekt, in dem ich moderne Android-'
              'Patterns, saubere Navigation, State-Management und robuste Fehlerbehandlung trainiere. '
              'Gleichzeitig ist es eine reale App, die ich perspektivisch im Play Store veröffentlichen möchte '
              'inklusive Cloud-Sync, Community-Features und weiteren Plattformen.',
          features: [
            'Eigenes Open-Source-Projekt (Android, MIT-Lizenz)',
            'Suche über 350.000+ Spiele mit Filtern für Plattform, Genre, Bewertung und Release-Datum',
            'Favoriten & Wunschlisten mit Offline-Speicherung via Room-Database',
            'Detailseiten mit Beschreibungen, Screenshots, Ratings, Plattformen und mehr',
            'Statistiken & Charts zur Analyse der persönlichen Spielvorlieben',
            'Dark-/Light-Mode, umfangreiche Settings und modernes Jetpack-Compose-UI',
            'MVVM/MVI-Hybrid-Architektur mit sauberem Repository-Pattern und klaren Layers',
            'RAWG-API-Integration als reale, externe Datenquelle',
          ],
          screenshotAssets: [
            'assets/images/gameradar_1.png',
            'assets/images/gameradar_2.png',
            'assets/images/gameradar_3.png',
          ],

          // 🔹 NEU: Links
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
          title: 'CryptoTracker – Krypto Portfolio & Market App (Eigenprojekt)',
          subtitle:
              'Moderne Android-App zur Verfolgung von Kryptowährungen, Preisen und Portfolio-Werten in Echtzeit.',
          status: 'Eigenprojekt · Open Source',
          techStack: 'Kotlin · Jetpack Compose · MVVM · Retrofit · REST API',
          longDescription:
              'CryptoTracker ist ein Android-Projekt zur Echtzeit-Überwachung von Kryptowährungen. '
              'Die App nutzt eine externe REST-API, um aktuelle Preise, Marktveränderungen und '
              'weitere Kennzahlen abzurufen und visuell darzustellen.\n\n'
              'Das Projekt dient als technisches Showcase für API-Integration, State-Management '
              'mit MVVM, moderne Compose-UI und saubere Trennung von Data-, Domain- und Presentation-Layer. '
              'Besonderer Fokus lag auf klarer Architektur, performanter Datenaktualisierung und '
              'übersichtlicher Darstellung komplexer Finanzdaten.',
          features: [
            'Echtzeit-Preisabfragen über externe Krypto-API',
            'Moderne UI mit Jetpack Compose',
            'MVVM-Architektur mit klarer Layer-Trennung',
            'Detailansichten für Coins mit Preisverlauf',
            'Saubere Netzwerk- und Fehlerbehandlung',
            'Dark Mode & performante UI-States',
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

          // Optional: GitHub Link
          appRepoUrl: 'https://github.com/jchillah/CryptoTracker',
        ),
      ),
    );
  }

  void _openArkCompanion(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const ProjectDetailPage(
          title: 'ARK Companion / Server-Tools (Eigenprojekt)',
          subtitle:
              'Persönliches Konzeptprojekt rund um ARK: ASA Server-Status & Management.',
          status: 'Eigenprojekt · Konzeptphase',
          techStack: 'Flutter · REST APIs',
          longDescription:
              'Die ARK Companion App ist ein persönliches Konzeptprojekt, mit dem ich Ideen rund um '
              'Server-Status, Tools für Spieler und API-Anbindung ausprobiere. \n\n'
              'Ich nutze dieses Projekt, um REST-APIs in Flutter anzubinden, UI für Listen, Filter und '
              'Detailansichten zu gestalten und generell Erfahrung mit datengetriebenen Oberflächen zu sammeln. '
              'Aktuell ist das Projekt noch nicht produktiv nutzbar, sondern dient mir als Experimentier- und '
              'Lernfläche rund um ARK: ASA.',
          features: [
            'Eigenes Konzept- und Lernprojekt (kein offizielles Tool)',
            'Serverlisten mit Filtermöglichkeiten (geplant)',
            'Favoriten-Server markieren und schnell wiederfinden (geplant)',
            'Statusanzeige basierend auf externen APIs (abhängig von Verfügbarkeit)',
            'Übungsprojekt für REST-API-Anbindung und UI-Design in Flutter',
          ],
          screenshotAssets: ['assets/images/ark_companion_1.png'],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Portfolio',
      subtitle:
          'Eine Auswahl meiner eigenen Lern- und Showcase-Projekte – ideal, um zu sehen, wie ich Architektur, UI und Datenanbindung denke.',
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 800;
          return Flex(
            direction: isWide ? Axis.horizontal : Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: PortfolioCard(
                  title: 'GameRadar – Gaming Discovery App',
                  description:
                      'Moderne Android-App zum Entdecken, Verwalten und Analysieren von Games. '
                      'Open Source, RAWG-API, Offline-First, Jetpack Compose.',
                  techStack:
                      'Kotlin · Jetpack Compose · MVVM/MVI · RAWG API · Room',
                  status: 'Eigenprojekt · Aktiv in Entwicklung',
                  onTap: () => _openGameRadar(context),
                  iconAsset: 'assets/images/gameradar_app_icon.png',
                ),
              ),
              const SizedBox(width: 16, height: 16),
              Expanded(
                child: PortfolioCard(
                  title: 'CryptoTracker – Krypto Portfolio App',
                  description:
                      'Android-App zur Verfolgung von Kryptowährungen in Echtzeit. '
                      'REST-API Integration, MVVM Architektur, modernes Compose-UI.',
                  techStack: 'Kotlin · Jetpack Compose · MVVM · REST API',
                  status: 'Eigenprojekt · Open Source',
                  onTap: () => _openCryptoTracker(context),
                  iconAsset: null, // optional später eigenes Icon
                ),
              ),
              const SizedBox(width: 16, height: 16),
              Expanded(
                child: PortfolioCard(
                  title: 'ARK Companion / Server-Tools',
                  description:
                      'Konzept-App rund um ARK: ASA, um API-Anbindung, Server-Status und '
                      'Listen/Filter-UI in Flutter zu trainieren.',
                  techStack: 'Flutter · REST APIs',
                  status: 'Eigenprojekt · Konzeptphase',
                  onTap: () => _openArkCompanion(context),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
