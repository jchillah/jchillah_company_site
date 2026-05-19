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
          'subject=Projektanfrage%20-%20Jchillah%27s%20Design%20%26%20Coding%20Forge',
    );
    await launchUrl(uri, mode: LaunchMode.platformDefault);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final brandBadge = Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF00FF5F).withOpacity(0.1),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: const Color(0xFF00FF5F).withOpacity(0.34),
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
          TextSpan(text: 'Apps, Gaming Tools\n'),
          TextSpan(text: '& digitale Produkte '),
          TextSpan(
            text: 'mit Forge-Style.',
            style: TextStyle(color: Color(0xFF00FF5F)),
          ),
        ],
      ),
    );

    final subtitle = Text(
      'Ich bin Michael Winkler, App-Entwickler und Gründer von Jchillah’s Design & Coding Forge. '
      'Ich entwickle moderne Mobile Apps, Flutter Web Apps und digitale Produkte – mit dunklem Neon-Design, '
      'klarer Architektur und echtem Release-Fokus. Mein erstes veröffentlichtes Android-Projekt ist ASA Server Eye, '
      'ein Server-Tracker für ARK: Survival Ascended.',
      style: theme.textTheme.bodyLarge?.copyWith(
        color: Colors.white.withOpacity(0.76),
        height: 1.55,
      ),
    );

    final ctaButtons = Wrap(
      spacing: 16,
      runSpacing: 10,
      children: [
        FilledButton.icon(
          onPressed: _openMail,
          icon: const Icon(Icons.mail_outline),
          label: const Text('Projekt anfragen'),
        ),
        OutlinedButton.icon(
          onPressed: onShowServices,
          icon: const Icon(Icons.design_services_outlined),
          label: const Text('Leistungen ansehen'),
        ),
      ],
    );

    final bulletPoints = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        HeroBullet(text: 'Flutter Apps für Android, iOS und Web'),
        HeroBullet(text: 'Gaming Companion Tools wie ASA Server Eye'),
        HeroBullet(text: 'UI/UX, Branding, App-Store-Vorbereitung und Release-Begleitung'),
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
          Expanded(flex: 5, child: textContent),
          const SizedBox(width: 34),
          const Expanded(flex: 4, child: HeroMockup()),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textContent,
        const SizedBox(height: 28),
        const HeroMockup(),
      ],
    );
  }
}
