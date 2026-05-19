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
      aspectRatio: 16 / 10,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: const Color(0xFF00FF5F).withOpacity(0.42),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF00FF5F).withOpacity(0.14),
              blurRadius: 38,
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
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment.center,
                    radius: 1.05,
                    colors: [
                      const Color(0xFF00351C).withOpacity(0.78),
                      Colors.black.withOpacity(0.95),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 54, 18, 18),
                child: Image.asset(
                  _codingSetupAsset,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                  errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                ),
              ),
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.18),
                      Colors.black.withOpacity(0.06),
                      Colors.black.withOpacity(0.42),
                    ],
                    stops: const [0.0, 0.52, 1.0],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Opacity(
                opacity: 0.10,
                child: CustomPaint(painter: MatrixRainPainter()),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 9,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.62),
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(
                      color: const Color(0xFF00FF5F).withOpacity(0.42),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF00FF5F).withOpacity(0.16),
                        blurRadius: 18,
                      ),
                    ],
                  ),
                  child: const Text(
                    'Jchillah’s Forge',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF00FF5F),
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.7,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 22,
              bottom: 22,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  _logoAsset,
                  width: 96,
                  height: 96,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    width: 96,
                    height: 96,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.72),
                      borderRadius: BorderRadius.circular(20),
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
            ),
          ],
        ),
      ),
    );
  }
}
