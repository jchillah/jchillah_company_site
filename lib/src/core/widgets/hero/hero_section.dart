// src/core/widgets/hero/hero_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/hero/hero_bullet.dart';
import 'package:jchillah_company_site/src/core/widgets/hero/hero_mockup.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  final bool isWide;
  final VoidCallback? onShowServices;

  const HeroSection({super.key, required this.isWide, this.onShowServices});
  Future<void> _openMail() async {
    final uri = Uri(
      scheme: 'mailto',
      path: 'jchillah@gmail.com',
      query:
          'subject=Unverbindliches%20Gespräch%20-%20App%20Entwicklung%20mit%20Jchillah',
    );
    await launchUrl(uri, mode: LaunchMode.platformDefault);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final title = RichText(
      text: TextSpan(
        style: theme.textTheme.displaySmall?.copyWith(
          fontWeight: FontWeight.bold,
          height: 1.1,
        ),
        children: const [
          TextSpan(text: 'Apps, die dein\n'),
          TextSpan(text: 'Business '),
          TextSpan(
            text: 'voranbringen',
            style: TextStyle(color: Color(0xFF00FF5F)),
          ),
        ],
      ),
    );

    final subtitle = Text(
      'Ich bin Michael, App-Entwickler mit Fokus auf Flutter, Kotlin/Jetpack '
      'Compose und SwiftUI. Ich begleite dich von der ersten Idee über das '
      'technische Konzept bis zur fertigen App – passgenau für dein Business.',
      style: theme.textTheme.bodyLarge?.copyWith(color: Colors.white70),
    );

    final ctaButtons = Wrap(
      spacing: 16,
      runSpacing: 8,
      children: [
        FilledButton(
          onPressed: _openMail,
          child: const Text('Unverbindliches Gespräch starten'),
        ),
        OutlinedButton(
          onPressed: onShowServices,
          child: const Text('Leistungen ansehen'),
        ),
      ],
    );

    final bulletPoints = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        HeroBullet(text: 'Cross-Platform-Apps mit Flutter (iOS, Android, Web)'),
        HeroBullet(text: 'Native Entwicklung mit Kotlin & SwiftUI'),
        HeroBullet(
          text: 'Technische Begleitung für Freelancer & kleine Unternehmen',
        ),
      ],
    );

    if (isWide) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title,
                const SizedBox(height: 16),
                subtitle,
                const SizedBox(height: 24),
                ctaButtons,
                const SizedBox(height: 24),
                bulletPoints,
              ],
            ),
          ),
          const SizedBox(width: 32),
          const Expanded(flex: 2, child: HeroMockup()),
        ],
      );
    }

    // Mobile / schmal
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        const SizedBox(height: 16),
        subtitle,
        const SizedBox(height: 24),
        ctaButtons,
        const SizedBox(height: 24),
        const HeroMockup(),
        const SizedBox(height: 24),
        bulletPoints,
      ],
    );
  }
}
