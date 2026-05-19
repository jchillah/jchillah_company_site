// src/core/widgets/hero/hero_mockup.dart

import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/matrixPainter/matrix_pain_painter.dart';

class HeroMockup extends StatelessWidget {
  const HeroMockup({super.key});

  static const String _codingSetupAsset =
      'assets/images/branding/jchillah_coding_setup.png';
  static const String _logoAsset =
      'assets/images/branding/jchillah_logo_square.png';

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 3,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: const Color(0xFF00FF5F).withOpacity(0.45)),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF00FF5F).withOpacity(0.12),
              blurRadius: 34,
              spreadRadius: 2,
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF00130A), Color(0xFF00351C)],
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              _codingSetupAsset,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const SizedBox.shrink(),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.18),
                    Colors.black.withOpacity(0.58),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              child: Opacity(
                opacity: 0.14,
                child: CustomPaint(painter: MatrixRainPainter()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.55),
                      borderRadius: BorderRadius.circular(999),
                      border: Border.all(
                        color: const Color(0xFF00FF5F).withOpacity(0.35),
                      ),
                    ),
                    child: const Text(
                      'Jchillah’s Forge',
                      style: TextStyle(
                        color: Color(0xFF00FF5F),
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          _logoAsset,
                          width: 86,
                          height: 86,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            width: 86,
                            height: 86,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.65),
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: const Color(0xFF00FF5F).withOpacity(0.45),
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
                      const SizedBox(width: 14),
                      const Expanded(
                        child: Text(
                          '> build_mobile_apps();\n> ship_digital_products();',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 15,
                            height: 1.35,
                            color: Color(0xFFB7FFAD),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
