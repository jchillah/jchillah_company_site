// src/core/widgets/homepage/sections/footer.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/features/legal/presentation/datenschutz_page.dart';
import 'package:jchillah_company_site/src/features/legal/presentation/impressum_page.dart';

class Footer extends StatelessWidget {
  final ThemeData theme;

  const Footer({super.key, required this.theme});

  void _openDatenschutz(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => const DatenschutzPage()));
  }

  void _openImpressum(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => const ImpressumPage()));
  }

  @override
  Widget build(BuildContext context) {
    final year = DateTime.now().year;

    return DefaultTextStyle(
      style: theme.textTheme.bodySmall!.copyWith(color: Colors.white54),
      child: Row(
        children: [
          Text('© $year Jchillah Coding & Design Forge'),
          const Spacer(),
          Row(
            children: [
              InkWell(
                onTap: () => _openImpressum(context),
                child: const Text(
                  'Impressum',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(width: 8),
              const Text('·'),
              const SizedBox(width: 8),
              InkWell(
                onTap: () => _openDatenschutz(context),
                child: const Text(
                  'Datenschutz',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
