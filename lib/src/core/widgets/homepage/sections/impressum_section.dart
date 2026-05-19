// src/core/widgets/homepage/sections/impressum_section.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';

class ImpressumSection extends StatelessWidget {
  const ImpressumSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Section(
      title: 'Impressum',
      subtitle:
          'Anbieterkennzeichnung gemäß den geltenden Informationspflichten für digitale Dienste.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Diensteanbieter',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Michael Winkler\n'
            'Jchillah’s Design & Coding Forge\n'
            'Am Schülerheim 17\n'
            '14195 Berlin\n'
            'Deutschland',
            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Text(
            'Kontakt',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'E-Mail: jchillah@gmail.com\n'
            'GitHub: https://github.com/jchillah\n'
            'Website: https://jchillah.github.io/jchillah_company_site/',
            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Text(
            'Verantwortlich für den Inhalt',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Michael Winkler\n'
            'Am Schülerheim 17\n'
            '14195 Berlin\n'
            'Deutschland',
            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Text(
            'Haftung für Inhalte',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Die Inhalte dieser Website wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, '
            'Vollständigkeit und Aktualität der Inhalte kann jedoch keine Gewähr übernommen werden. '
            'Bei Bekanntwerden von Rechtsverletzungen werden entsprechende Inhalte umgehend geprüft '
            'und soweit erforderlich entfernt.',
            style: theme.textTheme.bodySmall?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Text(
            'Haftung für Links',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Diese Website enthält Links zu externen Websites Dritter. Auf deren Inhalte habe ich '
            'keinen Einfluss. Für diese fremden Inhalte übernehme ich keine Gewähr. Für die Inhalte '
            'der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber verantwortlich.',
            style: theme.textTheme.bodySmall?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Text(
            'Urheberrecht',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Die auf dieser Website erstellten Inhalte und Werke unterliegen dem deutschen Urheberrecht. '
            'Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen '
            'des Urheberrechts bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers.',
            style: theme.textTheme.bodySmall?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Text(
            'Hinweis',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Dieses Impressum wurde für eine persönliche Portfolio- und Entwicklerwebsite erstellt. '
            'Bei geschäftlicher Nutzung, Erweiterung um Shops, Verträge, Zahlungsfunktionen oder '
            'weitere Dienste sollte die rechtliche Ausgestaltung zusätzlich geprüft werden.',
            style: theme.textTheme.bodySmall?.copyWith(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
