// src/core/widgets/homepage/sections/impressum_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';

class ImpressumSection extends StatelessWidget {
  const ImpressumSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: 'Impressum',
      subtitle: 'Angaben gemäß § 5 Digitale-Dienste-Gesetz (DDG).',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ImprintBlock(
            title: 'Diensteanbieter',
            content:
                'Michael Winkler\n'
                'handelnd unter der Geschäftsbezeichnung\n'
                'Jchillah’s Design & Coding Forge\n'
                'Am Schülerheim 17\n'
                '14195 Berlin\n'
                'Deutschland',
          ),
          SizedBox(height: 20),
          _ImprintBlock(
            title: 'Kontakt',
            content:
                'Telefon: +49 179 4089 187\n'
                'E-Mail für Projektanfragen: michael.winkler.developer@gmail.com\n'
                'ASA Server Eye Support: asa.server.eye@gmail.com\n'
                'Website: https://jchillah.github.io/\n'
                'GitHub: https://github.com/jchillah',
          ),
          SizedBox(height: 20),
          _ImprintBlock(
            title: 'Geschäftsbezeichnung',
            content:
                'Jchillah’s Design & Coding Forge ist die Geschäftsbezeichnung von Michael Winkler. '
                'Diensteanbieter und Vertragspartner ist Michael Winkler.',
          ),
          SizedBox(height: 20),
          _ImprintBlock(
            title: 'Verantwortlich für die Inhalte',
            content:
                'Michael Winkler\n'
                'Am Schülerheim 17\n'
                '14195 Berlin\n'
                'Deutschland',
          ),
          SizedBox(height: 20),
          _ImprintBlock(
            title: 'Urheberrecht',
            content:
                'Die auf dieser Website veröffentlichten Texte, Grafiken, Screenshots, Designs und sonstigen Inhalte unterliegen dem deutschen Urheberrecht, soweit nicht ausdrücklich anders gekennzeichnet. '
                'Jede Verwertung außerhalb der gesetzlichen Schranken des Urheberrechts bedarf der vorherigen Zustimmung des jeweiligen Rechteinhabers.',
          ),
          SizedBox(height: 20),
          _ImprintBlock(
            title: 'Externe Verweise',
            content:
                'Diese Website verweist auf externe Angebote, insbesondere auf GitHub-Repositories, Projektseiten und weitere Online-Dienste. '
                'Für Inhalte und Datenverarbeitungen auf den verlinkten Angeboten sind ausschließlich deren jeweilige Betreiber verantwortlich.',
          ),
        ],
      ),
    );
  }
}

class _ImprintBlock extends StatelessWidget {
  final String title;
  final String content;

  const _ImprintBlock({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        SelectableText(
          content,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: Colors.white70,
            height: 1.55,
          ),
        ),
      ],
    );
  }
}
