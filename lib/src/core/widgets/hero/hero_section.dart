// src/core/widgets/hero/hero_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/hero/hero_bullet.dart';
import 'package:jchillah_company_site/src/core/widgets/hero/hero_mockup.dart';

class HeroSection extends StatelessWidget {
  final bool isWide;
  final VoidCallback? onShowServices;

  const HeroSection({super.key, required this.isWide, this.onShowServices});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final brandBadge = Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF00FF5F).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: const Color(0xFF00FF5F).withValues(alpha: 0.34),
        ),
      ),
      child: Text(
        'Jchillah’s Design & Coding Forge',
        style: theme.textTheme.labelLarge?.copyWith(
          color: const Color(0xFF00FF5F),
          fontWeight: FontWeight.w800,
          letterSpacing: 0.4,
        ),
      ),
    );

    final title = RichText(
      text: TextSpan(
        style: theme.textTheme.displaySmall?.copyWith(
          fontWeight: FontWeight.w900,
          height: 1.02,
          letterSpacing: -1.2,
        ),
        children: const [
          TextSpan(text: 'Individuelle Apps\n'),
          TextSpan(text: 'und digitale Produkte '),
          TextSpan(
            text: 'professionell umgesetzt.',
            style: TextStyle(color: Color(0xFF00FF5F)),
          ),
        ],
      ),
    );

    final subtitle = Text(
      'Jchillah’s Design & Coding Forge entwickelt mobile Apps, Web-Anwendungen und digitale Produktlösungen für Selbstständige, kleine Unternehmen und Start-ups. '
      'Ich begleite Projekte von der Anforderungsanalyse und UX-Konzeption über Architektur und Implementierung bis zu Tests und Veröffentlichung.',
      style: theme.textTheme.bodyLarge?.copyWith(
        color: Colors.white.withValues(alpha: 0.76),
        height: 1.55,
      ),
    );

    final ctaButtons = Wrap(
      spacing: 16,
      runSpacing: 10,
      children: [
        FilledButton.icon(
          onPressed: onShowServices,
          icon: const Icon(Icons.design_services_outlined),
          label: const Text('Leistungen und Vorgehen'),
        ),
      ],
    );

    final bulletPoints = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        HeroBullet(
          text: 'Cross-Platform-Entwicklung mit Flutter für Android, iOS und Web',
        ),
        HeroBullet(
          text: 'Native App-Entwicklung mit Kotlin, Jetpack Compose und SwiftUI',
        ),
        HeroBullet(
          text:
              'Produktkonzeption, UI/UX, Qualitätssicherung und Release-Vorbereitung',
        ),
      ],
    );

    final textContent = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        brandBadge,
        const SizedBox(height: 18),
        title,
        const SizedBox(height: 18),
        subtitle,
        const SizedBox(height: 26),
        ctaButtons,
        const SizedBox(height: 26),
        bulletPoints,
      ],
    );

    if (isWide) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 7, child: textContent),
          const SizedBox(width: 30),
          const Expanded(flex: 9, child: HeroMockup()),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [textContent, const SizedBox(height: 28), const HeroMockup()],
    );
  }
}
