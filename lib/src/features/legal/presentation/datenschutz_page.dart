// src/features/legal/presentation/datenschutz_page.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';

class DatenschutzPage extends StatelessWidget {
  const DatenschutzPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datenschutzerklärung'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1100),
              child: const Section(
                title: 'Datenschutzerklärung',
                subtitle:
                    'Informationen gemäß Art. 13 und 14 Datenschutz-Grundverordnung (DSGVO).',
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _PrivacyBlock(
                      title: '1. Verantwortlicher',
                      content:
                          'Verantwortlich für die Verarbeitung personenbezogener Daten auf dieser Website ist:\n\n'
                          'Michael Winkler\n'
                          'Jchillah’s Design & Coding Forge\n'
                          'Am Schülerheim 17\n'
                          '14195 Berlin\n'
                          'Deutschland\n\n'
                          'Telefon: +49 179 4089 187\n'
                          'E-Mail: jchillah@gmail.com',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '2. Bereitstellung und Hosting der Website',
                      content:
                          'Diese Website wird über GitHub Pages bereitgestellt. Anbieter des Hosting-Dienstes ist GitHub. '
                          'Beim Aufruf einer GitHub-Pages-Website wird die IP-Adresse des zugreifenden Geräts für Sicherheitszwecke protokolliert. '
                          'Darüber hinaus können technisch erforderliche Verbindungsdaten verarbeitet werden, insbesondere Datum und Uhrzeit des Zugriffs, aufgerufene Adresse oder Datei, Referrer-URL, Browsertyp, Betriebssystem und Geräteinformationen.\n\n'
                          'Die Verarbeitung ist erforderlich, um die Website auszuliefern, ihre Stabilität und Sicherheit zu gewährleisten und technische Störungen abzuwehren. '
                          'Rechtsgrundlage ist Art. 6 Abs. 1 Buchst. f DSGVO. Das berechtigte Interesse liegt im sicheren und zuverlässigen Betrieb dieses Internetangebots.\n\n'
                          'GitHub kann Daten auch außerhalb der Europäischen Union beziehungsweise des Europäischen Wirtschaftsraums verarbeiten. '
                          'Informationen zu Empfängern, Speicherdauer und den von GitHub eingesetzten Schutzmaßnahmen enthält die Datenschutzerklärung von GitHub:\n'
                          'https://docs.github.com/de/site-policy/privacy-policies/github-general-privacy-statement\n\n'
                          'Der Betreiber dieser Website erhält von GitHub Pages keine personenbezogenen Besucherprofile und hat keinen regulären Zugriff auf individuelle Server-Logdateien.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title:
                          '3. Cookies, lokale Speicherung und Reichweitenmessung',
                      content:
                          'Diese Website setzt keine eigenen Tracking-, Analyse- oder Marketing-Cookies ein. '
                          'Es werden keine Dienste zur Reichweitenmessung, kein Werbetracking, kein Newsletter-System und kein eingebettetes Kontaktformular verwendet.\n\n'
                          'Der Browser kann statische Bestandteile der Website, beispielsweise Programmdateien, Bilder und Schriftdateien, technisch bedingt im Zwischenspeicher speichern. '
                          'Diese Zwischenspeicherung dient einer schnelleren und stabileren Darstellung der Website und wird durch die Einstellungen des verwendeten Browsers gesteuert.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '4. Kontaktaufnahme per E-Mail',
                      content:
                          'Bei einer Kontaktaufnahme per E-Mail werden die übermittelten Daten verarbeitet. Dazu können insbesondere Name, E-Mail-Adresse, Unternehmen, Kontaktdaten, Inhalt der Nachricht, Anhänge und Zeitpunkt der Kommunikation gehören. '
                          'Die Verarbeitung erfolgt zur Bearbeitung und Beantwortung der Anfrage.\n\n'
                          'Bezieht sich die Anfrage auf die Anbahnung oder Durchführung eines Vertrags, ist Art. 6 Abs. 1 Buchst. b DSGVO die Rechtsgrundlage. '
                          'Bei sonstigen geschäftlichen oder fachlichen Anfragen erfolgt die Verarbeitung auf Grundlage von Art. 6 Abs. 1 Buchst. f DSGVO. '
                          'Das berechtigte Interesse besteht in der Bearbeitung eingehender Anfragen und der Kommunikation mit Interessenten, Kunden und Projektpartnern.\n\n'
                          'Die angegebene E-Mail-Adresse wird über Gmail bereitgestellt. Dabei können Kommunikationsdaten durch Google Ireland Limited und verbundene Unternehmen verarbeitet werden. '
                          'Weitere Informationen stellt Google unter https://policies.google.com/privacy?hl=de bereit.\n\n'
                          'Die Bereitstellung der Daten ist weder gesetzlich noch vertraglich vorgeschrieben. Ohne die für eine Antwort erforderlichen Angaben kann eine Anfrage jedoch gegebenenfalls nicht bearbeitet werden.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '5. Kontaktaufnahme per Telefon oder SMS',
                      content:
                          'Bei einer Kontaktaufnahme per Telefon oder SMS werden die dabei übermittelten Angaben zur Bearbeitung des Anliegens verarbeitet. '
                          'Hierzu können insbesondere Telefonnummer, Name, Zeitpunkt, Nachrichteninhalt und Gesprächsnotizen gehören.\n\n'
                          'Die Rechtsgrundlage ist Art. 6 Abs. 1 Buchst. b DSGVO, soweit die Kommunikation der Vertragsanbahnung oder Vertragsdurchführung dient. '
                          'Im Übrigen erfolgt die Verarbeitung nach Art. 6 Abs. 1 Buchst. f DSGVO auf Grundlage des berechtigten Interesses an einer effizienten Kommunikation.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '6. Kontaktaufnahme über WhatsApp',
                      content:
                          'Die Kontaktseite enthält einen Link zum Messenger-Dienst WhatsApp. Beim bloßen Aufruf dieser Website wird durch diesen Link keine Verbindung zu WhatsApp hergestellt. '
                          'Erst wenn der Link geöffnet oder über WhatsApp eine Nachricht gesendet wird, verarbeitet WhatsApp die hierfür erforderlichen Daten.\n\n'
                          'Bei einer Kontaktaufnahme über WhatsApp können insbesondere Telefonnummer, Profilinformationen, Nachrichteninhalte, Anhänge, Kommunikationszeitpunkte sowie technische Nutzungsdaten verarbeitet werden. '
                          'Verantwortlicher Anbieter für Nutzer im Europäischen Wirtschaftsraum ist WhatsApp Ireland Limited. Eine Verarbeitung in Drittländern kann nicht ausgeschlossen werden.\n\n'
                          'Die Verarbeitung der beim Betreiber dieser Website eingehenden Nachricht erfolgt nach Art. 6 Abs. 1 Buchst. b DSGVO, soweit sie der Vertragsanbahnung oder Vertragsdurchführung dient, andernfalls nach Art. 6 Abs. 1 Buchst. f DSGVO. '
                          'Informationen zur Verarbeitung durch WhatsApp sind unter https://www.whatsapp.com/legal/privacy-policy-eea verfügbar.\n\n'
                          'Vertrauliche Informationen, Zugangsdaten, Gesundheitsdaten oder andere besonders schutzbedürftige Inhalte sollten nicht über WhatsApp übermittelt werden.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '7. Externe Links und Projektressourcen',
                      content:
                          'Diese Website enthält externe Links, insbesondere zu GitHub, Projekt-Repositories, GitHub-Pages-Projektseiten, einer extern bereitgestellten Lebenslauf-Web-App und den Datenschutzerklärungen einzelner Anwendungen. '
                          'Beim bloßen Anzeigen dieser Website werden wegen dieser Links keine Daten an die jeweiligen Zielanbieter übermittelt. '
                          'Erst beim Öffnen eines Links wird die Zielseite aufgerufen. Dabei gelten die Datenschutzbestimmungen des jeweiligen Betreibers.\n\n'
                          'Der Betreiber dieser Website hat keinen Einfluss darauf, welche personenbezogenen Daten externe Anbieter beim Aufruf ihrer Seiten verarbeiten.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '8. Empfänger personenbezogener Daten',
                      content:
                          'Personenbezogene Daten werden nur weitergegeben, wenn dies für den jeweiligen Zweck erforderlich ist, eine gesetzliche Verpflichtung besteht oder eine andere Rechtsgrundlage die Übermittlung erlaubt. '
                          'Mögliche Empfänger sind insbesondere Hosting- und Kommunikationsdienstleister, Telekommunikationsanbieter sowie im Einzelfall Steuerberater, Rechtsberater, Behörden oder sonstige Stellen, soweit eine rechtliche oder geschäftliche Notwendigkeit besteht.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '9. Speicherdauer',
                      content:
                          'Personenbezogene Daten werden gelöscht, sobald der Zweck der Verarbeitung entfällt und keine gesetzlichen Aufbewahrungspflichten, laufenden Vertragsbeziehungen oder berechtigten Interessen an einer weiteren Speicherung entgegenstehen.\n\n'
                          'Unverbindliche Anfragen werden grundsätzlich gelöscht, wenn die Kommunikation abgeschlossen ist und keine weitere Bearbeitung zu erwarten ist. '
                          'Soweit eine Anfrage zu einem Auftrag, Vertrag, einer Rechnung oder einem sonstigen Geschäftsbeleg führt, werden die betreffenden Daten entsprechend den gesetzlichen handels- und steuerrechtlichen Aufbewahrungsfristen gespeichert.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '10. Rechte betroffener Personen',
                      content:
                          'Betroffene Personen haben im Rahmen der gesetzlichen Voraussetzungen insbesondere folgende Rechte:\n\n'
                          '• Auskunft über die verarbeiteten personenbezogenen Daten gemäß Art. 15 DSGVO\n'
                          '• Berichtigung unrichtiger Daten gemäß Art. 16 DSGVO\n'
                          '• Löschung personenbezogener Daten gemäß Art. 17 DSGVO\n'
                          '• Einschränkung der Verarbeitung gemäß Art. 18 DSGVO\n'
                          '• Datenübertragbarkeit gemäß Art. 20 DSGVO\n'
                          '• Widerspruch gegen Verarbeitungen auf Grundlage von Art. 6 Abs. 1 Buchst. e oder f DSGVO gemäß Art. 21 DSGVO\n'
                          '• Widerruf einer erteilten Einwilligung mit Wirkung für die Zukunft gemäß Art. 7 Abs. 3 DSGVO\n\n'
                          'Zur Ausübung dieser Rechte genügt eine Nachricht an die unter „Verantwortlicher“ angegebene Kontaktadresse.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '11. Widerspruchsrecht',
                      content:
                          'Soweit personenbezogene Daten auf Grundlage von Art. 6 Abs. 1 Buchst. f DSGVO verarbeitet werden, besteht das Recht, aus Gründen, die sich aus der besonderen Situation der betroffenen Person ergeben, jederzeit Widerspruch gegen die Verarbeitung einzulegen. '
                          'Die Verarbeitung wird danach beendet, sofern keine zwingenden schutzwürdigen Gründe nachgewiesen werden können, die die Interessen, Rechte und Freiheiten der betroffenen Person überwiegen, oder die Verarbeitung der Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen dient.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '12. Beschwerderecht bei einer Aufsichtsbehörde',
                      content:
                          'Betroffene Personen haben gemäß Art. 77 DSGVO das Recht, sich bei einer Datenschutzaufsichtsbehörde zu beschweren. '
                          'Für ein in Berlin ansässiges Unternehmen ist insbesondere folgende Behörde zuständig:\n\n'
                          'Berliner Beauftragte für Datenschutz und Informationsfreiheit\n'
                          'Alt-Moabit 59–61\n'
                          '10555 Berlin\n'
                          'E-Mail: mailbox@datenschutz-berlin.de',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '13. Datensicherheit',
                      content:
                          'Die Website wird über eine verschlüsselte HTTPS-Verbindung übertragen. Dadurch werden die zwischen Browser und Server übertragenen Daten vor einem unbemerkten Mitlesen während der Übertragung geschützt. '
                          'Ein vollständiger Schutz vor allen Risiken der Datenübertragung und -verarbeitung kann technisch jedoch nicht garantiert werden.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '14. Automatisierte Entscheidungen und Profiling',
                      content:
                          'Eine automatisierte Entscheidungsfindung einschließlich Profiling im Sinne von Art. 22 DSGVO findet im Zusammenhang mit dieser Website nicht statt.',
                    ),
                    SizedBox(height: 24),
                    _PrivacyBlock(
                      title: '15. Stand und Änderungen',
                      content:
                          'Stand: 20. Juli 2026. Diese Datenschutzerklärung wird angepasst, wenn sich die Website, die eingesetzten Dienste oder die rechtlichen Anforderungen ändern.',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PrivacyBlock extends StatelessWidget {
  final String title;
  final String content;

  const _PrivacyBlock({required this.title, required this.content});

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
        Text(
          content,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: Colors.white70,
            height: 1.6,
          ),
        ),
      ],
    );
  }
}
