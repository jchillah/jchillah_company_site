// src/core/widgets/homepage/sections/process/process_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/process/process_step.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';

class ProcessSection extends StatelessWidget {
  const ProcessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: 'Projektablauf',
      subtitle:
          'Ein transparenter Prozess von der Anforderungsanalyse bis zur Veröffentlichung.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProcessStep(
            number: '01',
            title: 'Anforderungen & Ziele',
            description:
                'Zu Beginn werden Zielgruppe, Problemstellung, gewünschter Funktionsumfang, Plattformen und Rahmenbedingungen geklärt. '
                'Das Ergebnis ist eine belastbare Grundlage für Umfang, Prioritäten und technische Entscheidungen.',
          ),
          SizedBox(height: 12),
          ProcessStep(
            number: '02',
            title: 'Konzept, UX & Architektur',
            description:
                'Die Anforderungen werden in User Flows, Wireframes und ein konsistentes Oberflächenkonzept übersetzt. '
                'Parallel entstehen die technische Architektur, das Datenmodell und die Planung erforderlicher Schnittstellen.',
          ),
          SizedBox(height: 12),
          ProcessStep(
            number: '03',
            title: 'Implementierung & Qualitätssicherung',
            description:
                'Die Umsetzung erfolgt strukturiert und nachvollziehbar mit Versionsverwaltung, klar getrennten Verantwortlichkeiten und regelmäßigen Zwischenständen. '
                'Zentrale Funktionen werden durch geeignete Tests, Fehlerbehandlung und manuelle Prüfungen abgesichert.',
          ),
          SizedBox(height: 12),
          ProcessStep(
            number: '04',
            title: 'Veröffentlichung & Weiterentwicklung',
            description:
                'Nach der finalen Abnahme wird die Anwendung für den vorgesehenen Vertriebskanal vorbereitet und veröffentlicht. '
                'Dokumentation, Fehlerkorrekturen, Optimierungen und weitere Ausbaustufen können anschließend gezielt fortgeführt werden.',
          ),
        ],
      ),
    );
  }
}
