// src/features/legal/presentation/datenschutz_page.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';

class DatenschutzPage extends StatelessWidget {
  const DatenschutzPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Datenschutzerklärung'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1100),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Section(
                      title: 'Datenschutzerklärung',
                      subtitle:
                          'Informationen zur Datenverarbeitung auf dieser Website.',
                      child: Text(
                        'Diese Datenschutzerklärung beschreibt die Verarbeitung personenbezogener Daten '
                        'auf der Website von Jchillah’s Design & Coding Forge. Sie ist als sachliche '
                        'Grundlage für diese Portfolio-Website formuliert und sollte vor kommerzieller '
                        'Nutzung zusätzlich rechtlich geprüft werden.',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '1. Verantwortlicher',
                      child: Text(
                        'Verantwortlich für diese Website ist:\n\n'
                        'Michael Winkler\n'
                        'Jchillah’s Design & Coding Forge\n'
                        'Am Schülerheim 17\n'
                        '14195 Berlin\n'
                        'Deutschland\n\n'
                        'E-Mail: jchillah@gmail.com',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '2. Hosting über GitHub Pages',
                      child: Text(
                        'Diese Website wird über GitHub Pages bereitgestellt. Beim Aufruf der Website '
                        'können technisch notwendige Zugriffsdaten verarbeitet werden, damit die Seite '
                        'ausgeliefert und sicher betrieben werden kann. Dazu können insbesondere IP-Adresse, '
                        'Datum und Uhrzeit des Zugriffs, abgerufene Dateien, Browsertyp, Betriebssystem und '
                        'Referrer-URL gehören.\n\n'
                        'Die Verarbeitung erfolgt, um die Website technisch bereitzustellen, die Sicherheit '
                        'des Angebots zu gewährleisten und Fehler nachvollziehen zu können.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '3. Kontaktaufnahme per E-Mail',
                      child: Text(
                        'Wenn du per E-Mail Kontakt aufnimmst, werden die von dir übermittelten Angaben '
                        'verarbeitet, zum Beispiel Name, E-Mail-Adresse, Inhalt der Nachricht und der Zeitpunkt '
                        'der Kontaktaufnahme. Diese Daten werden genutzt, um deine Anfrage zu beantworten und '
                        'gegebenenfalls Anschlussfragen zu klären.\n\n'
                        'Die Verarbeitung erfolgt je nach Inhalt der Anfrage zur Vertragsanbahnung oder auf '
                        'Grundlage eines berechtigten Interesses an der Kommunikation mit Interessenten, '
                        'Kunden und Projektpartnern.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '4. Externe Links',
                      child: Text(
                        'Diese Website enthält Links zu externen Angeboten, insbesondere zu GitHub, zur '
                        'Lebenslauf-Web-App, zu Projekt-Repositories und zu Datenschutzseiten einzelner Apps. '
                        'Wenn du einen externen Link öffnest, verlässt du diese Website. Für die Verarbeitung '
                        'personenbezogener Daten auf externen Seiten sind die jeweiligen Betreiber verantwortlich.\n\n'
                        'Externe Links auf dieser Website können unter anderem zu folgenden Angeboten führen:\n\n'
                        '• GitHub Profil und Projekt-Repositories\n'
                        '• Lebenslauf-Web-App unter my-personal-cv-app-65750.web.app\n'
                        '• ASA Server Eye Repository\n'
                        '• ASA Server Eye Datenschutzerklärung',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '5. Cookies, Tracking und Analyse',
                      child: Text(
                        'Diese Portfolio-Website ist als einfache Präsentationsseite konzipiert. Es werden '
                        'keine eigenen Tracking-Cookies, kein eigenes Analyse-Tracking und kein Newsletter-System '
                        'eingesetzt.\n\n'
                        'Sollten später Analyse-Dienste, Kontaktformulare, Newsletter, eingebettete Inhalte oder '
                        'andere Drittanbieter-Funktionen ergänzt werden, muss diese Datenschutzerklärung entsprechend '
                        'aktualisiert werden.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '6. Speicherdauer',
                      child: Text(
                        'Personenbezogene Daten werden nur so lange gespeichert, wie es für den jeweiligen Zweck '
                        'erforderlich ist oder gesetzliche Aufbewahrungspflichten bestehen. E-Mail-Anfragen können '
                        'gespeichert werden, solange dies für die Bearbeitung, Nachverfolgung oder Dokumentation der '
                        'Kommunikation erforderlich ist.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '7. Deine Rechte',
                      child: Text(
                        'Dir stehen hinsichtlich deiner personenbezogenen Daten insbesondere folgende Rechte zu:\n\n'
                        '• Recht auf Auskunft\n'
                        '• Recht auf Berichtigung\n'
                        '• Recht auf Löschung\n'
                        '• Recht auf Einschränkung der Verarbeitung\n'
                        '• Recht auf Widerspruch gegen die Verarbeitung\n'
                        '• Recht auf Datenübertragbarkeit\n\n'
                        'Du kannst dich hierzu jederzeit über die angegebene E-Mail-Adresse melden.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '8. Aktualität dieser Datenschutzerklärung',
                      child: Text(
                        'Stand: Mai 2026. Diese Datenschutzerklärung wird angepasst, sobald sich die technische '
                        'Umsetzung dieser Website oder die eingebundenen Dienste wesentlich ändern.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
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