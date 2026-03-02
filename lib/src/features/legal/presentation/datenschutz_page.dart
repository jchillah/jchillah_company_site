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
                      title: 'Hinweis',
                      subtitle:
                          'Dieses Muster dient nur als allgemeiner Platzhalter und ersetzt keine rechtliche Beratung.',
                      child: Text(
                        'Bitte lass deine endgültige Datenschutzerklärung von einer '
                        'geeigneten Stelle (z.B. Anwalt oder Generator seriöser Anbieter) prüfen. '
                        'Die folgenden Inhalte sind ein Beispiel, das du an deine tatsächliche '
                        'Datenverarbeitung anpassen musst.',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '1. Verantwortlicher',
                      child: Text(
                        'Verantwortlich für die Datenverarbeitung auf dieser Website ist:\n\n'
                        'Michael Winkler\n'
                        'Jchillah Coding & Design Forge\n'
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
                      title: '2. Hosting & Zugriffsdaten',
                      child: Text(
                        'Beim Aufrufen dieser Website werden durch den Browser deines Endgeräts '
                        'automatisch Informationen an den Server dieser Website gesendet. Diese '
                        'Informationen können z.B. sein:\n\n'
                        '• IP-Adresse\n'
                        '• Datum und Uhrzeit der Anfrage\n'
                        '• Name und URL der abgerufenen Datei\n'
                        '• verwendeter Browser und Betriebssystem\n\n'
                        'Diese Daten werden in der Regel temporär in Logfiles gespeichert, um '
                        'die Stabilität und Sicherheit des Angebots zu gewährleisten. Eine '
                        'Zuordnung zu bestimmten Personen findet dabei in der Regel nicht statt.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '3. Kontaktaufnahme per E-Mail',
                      child: Text(
                        'Wenn du mich per E-Mail kontaktierst, werden die von dir übermittelten '
                        'Daten (z.B. Name, E-Mail-Adresse, Nachricht) zum Zweck der Bearbeitung '
                        'der Anfrage und für den Fall von Anschlussfragen gespeichert. \n\n'
                        'Rechtsgrundlage kann hier je nach Inhalt deiner Anfrage Art. 6 Abs. 1 lit. b '
                        'DSGVO (Vertrag/Anbahnung) oder Art. 6 Abs. 1 lit. f DSGVO (berechtigtes '
                        'Interesse an einer sinnvollen Kommunikation) sein.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '4. Verwendung von Log- und Analysedaten',
                      child: Text(
                        'Falls du zukünftig Analyse-Tools (z.B. Google Analytics) oder andere '
                        'Tracking-Werkzeuge einsetzt, müssen diese hier genau beschrieben werden '
                        'und ggf. nur mit Einwilligung (Cookie-Banner) genutzt werden. \n\n'
                        'Aktuell ist diese Website als einfache Präsentationsseite ohne '
                        'Tracking konzipiert. Wenn sich das ändert, solltest du deine '
                        'Datenschutzerklärung entsprechend anpassen.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '5. Deine Rechte',
                      child: Text(
                        'Dir stehen hinsichtlich deiner personenbezogenen Daten insbesondere '
                        'folgende Rechte nach der DSGVO zu:\n\n'
                        '• Recht auf Auskunft\n'
                        '• Recht auf Berichtigung\n'
                        '• Recht auf Löschung\n'
                        '• Recht auf Einschränkung der Verarbeitung\n'
                        '• Recht auf Widerspruch gegen die Verarbeitung\n'
                        '• Recht auf Datenübertragbarkeit\n\n'
                        'Du kannst dich hierzu jederzeit unter der oben angegebenen Adresse '
                        'an mich wenden.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Section(
                      title: '6. Aktualität und Änderung dieser Datenschutzerklärung',
                      child: Text(
                        'Diese Datenschutzerklärung ist ein Platzhalter und muss an deinen '
                        'konkreten technischen Stand angepasst werden. Wenn du Funktionen, '
                        'Drittanbieter oder Tracking änderst, solltest du auch diese '
                        'Erklärung entsprechend aktualisieren.',
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