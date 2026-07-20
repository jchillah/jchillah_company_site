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
          'Konzeption, Entwicklung und technische Begleitung für digitale Produkte aus einer Hand.',
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
                  title: 'Mobile- & Web-App-Entwicklung',
                  description:
                      'Entwicklung responsiver Anwendungen mit Flutter sowie nativer Apps mit Kotlin, Jetpack Compose und SwiftUI. '
                      'Der Fokus liegt auf wartbarer Architektur, klarer Benutzerführung und einer zuverlässigen technischen Umsetzung.',
                ),
              ),
              SizedBox(width: 16, height: 16),
              Expanded(
                child: ServiceCard(
                  icon: Icons.design_services_outlined,
                  title: 'UX/UI & Produktkonzeption',
                  description:
                      'Strukturierung von Anforderungen, User Flows, Wireframes und Oberflächenkonzepten. '
                      'So entsteht vor der Entwicklung ein nachvollziehbares Produktkonzept mit klar definierten Funktionen und Abläufen.',
                ),
              ),
              SizedBox(width: 16, height: 16),
              Expanded(
                child: ServiceCard(
                  icon: Icons.settings_suggest_outlined,
                  title: 'Architektur & technische Begleitung',
                  description:
                      'Auswahl eines geeigneten Technologie-Stacks, Aufbau einer skalierbaren Projektstruktur und Unterstützung bei Erweiterungen bestehender Anwendungen. '
                      'Dazu gehören auch API-Anbindungen, Datenhaltung, Tests, Fehlerbehandlung und Release-Vorbereitung.',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
