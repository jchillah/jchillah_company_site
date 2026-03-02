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
          'Angaben gemäß § 5 TMG. Dieses Impressum ist ein allgemeines Beispiel und ersetzt keine Rechtsberatung.',
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
            'Jchillah Coding & Design Forge\n'
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
            'GitHub: https://github.com/jchillah',
            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Text(
            'Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV',
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
            'Als Diensteanbieter bin ich gemäß § 7 Abs. 1 TMG für eigene Inhalte auf '
            'diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG '
            'bin ich als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte '
            'fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine '
            'rechtswidrige Tätigkeit hinweisen. Bei Bekanntwerden von Rechtsverletzungen werden '
            'entsprechende Inhalte umgehend entfernt.',
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
            'Mein Angebot kann Links zu externen Websites Dritter enthalten, auf deren Inhalte ich '
            'keinen Einfluss habe. Für diese fremden Inhalte übernehme ich keine Gewähr. Für die '
            'Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber verantwortlich.',
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
        ],
      ),
    );
  }
}
