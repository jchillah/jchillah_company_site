// src/features/contact/presentation/contact_page.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  static const String _email = 'jchillah@gmail.com';
  static const String _address =
      'Michael Winkler\nJchillah’s Design & Coding Forge\nAm Schülerheim 17\n14195 Berlin\nDeutschland';
  static const String _phoneDisplay = '+49 179 4089 187';
  static const String _phoneDial = '+491794089187';
  static const String _whatsAppUrl = 'https://wa.me/491794089187';

  Future<void> _openUrl(Uri uri, {bool external = false}) async {
    await launchUrl(
      uri,
      mode: external
          ? LaunchMode.externalApplication
          : LaunchMode.platformDefault,
    );
  }

  Future<void> _openMail() async {
    await _openUrl(
      Uri(
        scheme: 'mailto',
        path: _email,
        query:
            'subject=Projektanfrage%20-%20Jchillah%E2%80%99s%20Design%20%26%20Coding%20Forge',
      ),
    );
  }

  Future<void> _openPhone() =>
      _openUrl(Uri(scheme: 'tel', path: _phoneDial));
  Future<void> _openSms() =>
      _openUrl(Uri(scheme: 'sms', path: _phoneDial));
  Future<void> _openWhatsApp() =>
      _openUrl(Uri.parse(_whatsAppUrl), external: true);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Kontakt'), centerTitle: false),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 980),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Projektanfrage und Kontakt',
                    style: theme.textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w900,
                      height: 1.05,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Bitte beschreiben Sie kurz das Ziel Ihres Projekts, den gewünschten Funktionsumfang, die vorgesehenen Plattformen und den aktuellen Stand. Vorhandene Konzepte, Wireframes oder technische Unterlagen können Sie in Ihrer Nachricht ebenfalls nennen.',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: Colors.white70,
                      height: 1.55,
                    ),
                  ),
                  const SizedBox(height: 28),
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      _ContactCard(
                        icon: Icons.email_outlined,
                        title: 'E-Mail',
                        value: _email,
                        buttonLabel: 'E-Mail schreiben',
                        onPressed: _openMail,
                      ),
                      _ContactCard(
                        icon: Icons.phone_outlined,
                        title: 'Telefon',
                        value: _phoneDisplay,
                        buttonLabel: 'Anrufen',
                        onPressed: _openPhone,
                      ),
                      _ContactCard(
                        icon: Icons.sms_outlined,
                        title: 'SMS',
                        value: _phoneDisplay,
                        buttonLabel: 'SMS schreiben',
                        onPressed: _openSms,
                      ),
                      _ContactCard(
                        icon: Icons.chat_outlined,
                        title: 'WhatsApp',
                        value: _phoneDisplay,
                        buttonLabel: 'WhatsApp öffnen',
                        onPressed: _openWhatsApp,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const _AddressCard(address: _address),
                  const SizedBox(height: 24),
                  FilledButton.icon(
                    onPressed: _openMail,
                    icon: const Icon(Icons.mail_outline),
                    label: const Text('Projektanfrage per E-Mail senden'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String buttonLabel;
  final VoidCallback onPressed;

  const _ContactCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.buttonLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: 300,
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.32),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: const Color(0xFF00FF5F).withValues(alpha: 0.18),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: const Color(0xFF00FF5F)),
            const SizedBox(height: 10),
            Text(title, style: theme.textTheme.titleMedium),
            const SizedBox(height: 6),
            Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: const Color(0xFFB7FFAD),
              ),
            ),
            const SizedBox(height: 14),
            OutlinedButton.icon(
              onPressed: onPressed,
              icon: const Icon(Icons.open_in_new),
              label: Text(buttonLabel),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddressCard extends StatelessWidget {
  final String address;

  const _AddressCard({required this.address});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.32),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: const Color(0xFF00FF5F).withValues(alpha: 0.22),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Geschäftsanschrift', style: theme.textTheme.titleMedium),
          const SizedBox(height: 12),
          Text(
            address,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.white70,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
