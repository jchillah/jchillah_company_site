// src/core/widgets/homepage/sections/service/service_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/service/service_card.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Leistungen',
      subtitle:
          'Was ich als Jchillah Coding & Design Forge für dich übernehmen kann',
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 700;
          return Flex(
            direction: isWide ? Axis.horizontal : Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: ServiceCard(
                  icon: Icons.phone_iphone,
                  title: 'App-Entwicklung',
                  description:
                      'Konzeption und Entwicklung von mobilen Apps und Web-Apps – '
                      'mit Flutter für alle Plattformen oder nativ mit Kotlin und SwiftUI. '
                      'Ideal für kleine Unternehmen, Freelancer und individuelle Projekte.',
                ),
              ),
              SizedBox(width: 16, height: 16),
              Expanded(
                child: ServiceCard(
                  icon: Icons.design_services_outlined,
                  title: 'UI/UX & Prototyping',
                  description:
                      'Klar strukturierte Oberflächen, durchdachte User Flows und schnelle '
                      'Prototypen, damit du früh Feedback bekommst und sicher entscheiden kannst, '
                      'wie deine App aussehen und funktionieren soll.',
                ),
              ),
              SizedBox(width: 16, height: 16),
              Expanded(
                child: ServiceCard(
                  icon: Icons.settings_suggest_outlined,
                  title: 'Technische Beratung',
                  description:
                      'Unterstützung bei Architektur, Technologie-Stack und Umsetzung. '
                      'Ob MVP, interne Business-App oder Erweiterung eines bestehenden Systems – '
                      'ich helfe dir, eine saubere und wartbare Lösung zu finden.',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
