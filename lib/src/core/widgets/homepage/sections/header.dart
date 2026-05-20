// src/core/widgets/homepage/sections/header.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/features/contact/presentation/contact_page.dart';

class Header extends StatelessWidget {
  final bool isWide;

  const Header({super.key, required this.isWide});

  static const String _logoAsset =
      'assets/images/branding/jchillah_logo_square.png';

  void _openContactPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const ContactPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: isWide
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.center,
      children: [
        Flexible(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: const Color(0xFF00FF5F).withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFF00FF5F).withValues(alpha: 0.26),
                  ),
                ),
                child: const Icon(
                  Icons.terminal,
                  size: 24,
                  color: Color(0xFF00FF5F),
                ),
              ),
              const SizedBox(width: 12),
              Flexible(
                child: Text(
                  'Jchillah’s Design & Coding Forge',
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.6,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  _logoAsset,
                  width: 42,
                  height: 42,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => Container(
                    width: 42,
                    height: 42,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.45),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF00FF5F).withValues(alpha: 0.35),
                      ),
                    ),
                    child: const Text(
                      'JF',
                      style: TextStyle(
                        color: Color(0xFF00FF5F),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (isWide) ...[
          const Spacer(),
          FilledButton.icon(
            onPressed: () => _openContactPage(context),
            icon: const Icon(Icons.contact_mail_outlined),
            label: const Text('Kontakt'),
          ),
        ],
      ],
    );
  }
}
