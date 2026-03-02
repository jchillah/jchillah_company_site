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
        ),
      ),
    );
  }

  void _openWiWa(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const ProjectDetailPage(
          title: 'WiWa System – Warenwirtschaft light (Eigenprojekt)',
          subtitle:
              'Konzept- und Lernprojekt für ein leichtgewichtiges Warenwirtschaftssystem.',
          status: 'Eigenprojekt · Konzept / Prototyp',
          techStack: 'Flutter · SQLite · Feature-First Architecture',
          longDescription:
              'WiWa System ist ein persönliches Konzept- und Prototyp-Projekt. '
              'Die Idee dahinter: ein schlankes Warenwirtschaftssystem für kleine Betriebe, '
              'ohne den vollen Umfang eines großen ERP-Systems. \n\n'
              'Ich nutze WiWa, um mit lokalem Speicher (SQLite), Feature-First-Struktur und '
              'einem klaren Domain-Zuschnitt zu arbeiten. Das Projekt ist ideal, um typische '
              'Business-Fälle wie Artikel, Kunden, Angebote und Rechnungen technisch nachzubilden '
              'und Best Practices in Flutter auszuprobieren.',
          features: [
            'Eigenes Konzept- und Lernprojekt (kein Kundenprojekt)',
            'Artikelverwaltung mit Grunddaten, Preisen und Kategorien',
            'Kundenverwaltung mit Basisinformationen',
            'Angebote und Rechnungen mit Referenz auf Artikel & Kunden',
            'Lokale Speicherung mit SQLite (offlinefähig)',
            'Feature-First-Struktur als Übungsfeld für saubere Architektur',
          ],
          screenshotAssets: [
            'assets/images/wiwa_1.png',
            'assets/images/wiwa_2.png',
          ],
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
                ),
              ),
              const SizedBox(width: 16, height: 16),
              Expanded(
                child: PortfolioCard(
                  title: 'WiWa System – Warenwirtschaft light',
                  description:
                      'Konzept- und Prototyp-Projekt für ein schlankes Warenwirtschaftssystem '
                      'mit Artikeln, Kunden, Angeboten und Rechnungen.',
                  techStack: 'Flutter · SQLite · Feature-First',
                  status: 'Eigenprojekt · Konzept / Prototyp',
                  onTap: () => _openWiWa(context),
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
