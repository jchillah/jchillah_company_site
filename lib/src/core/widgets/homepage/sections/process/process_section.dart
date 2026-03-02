// src/core/widgets/homepage/sections/process/process_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/process/process_step.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';

class ProcessSection extends StatelessWidget {
  const ProcessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: 'Ablauf',
      subtitle: 'So begleite ich dich von der Idee bis zur fertigen App',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProcessStep(
            number: '01',
            title: 'Kennenlernen & Ziele',
            description:
                'Wir sprechen über dein Business, deine Idee und deine Ziele. '
                'Du bekommst ehrliches Feedback dazu, was technisch sinnvoll und realistisch ist.',
          ),
          SizedBox(height: 12),
          ProcessStep(
            number: '02',
            title: 'Konzept & Design',
            description:
                'Auf Basis deiner Anforderungen entstehen erste User Flows, Wireframes '
                'und ein UI-Konzept, das zu deiner Marke passt – inklusive technischer Planung.',
          ),
          SizedBox(height: 12),
          ProcessStep(
            number: '03',
            title: 'Entwicklung & Testing',
            description:
                'Ich setze deine App mit sauberer Architektur (z.B. MVVM, Feature-First) um, '
                'liefere dir regelmäßige Zwischenstände und teste die wichtigsten Use Cases.',
          ),
          SizedBox(height: 12),
          ProcessStep(
            number: '04',
            title: 'Launch & Weiterentwicklung',
            description:
                'Wir veröffentlichen deine App (Store, Web oder intern). '
                'Auf Wunsch begleite ich dich mit Bugfixes, Optimierungen und neuen Features.',
          ),
        ],
      ),
    );
  }
}
