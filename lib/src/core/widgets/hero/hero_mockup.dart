// src/core/widgets/hero/hero_mockup.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/matrixPainter/matrix_pain_painter.dart';

class HeroMockup extends StatelessWidget {
  const HeroMockup({super.key});

  static const String _codingSetupAsset =
      'assets/images/branding/jchillah_coding_setup.png';

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1.75,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: const Color(0xFF00FF5F).withValues(alpha: 0.42),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF00FF5F).withValues(alpha: 0.14),
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
              child: Image.asset(
                _codingSetupAsset,
                fit: BoxFit.fill,
                alignment: Alignment.center,
                errorBuilder: (_, _, _) => const SizedBox.shrink(),
              ),
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withValues(alpha: 0.24),
                      Colors.black.withValues(alpha: 0.04),
                      Colors.black.withValues(alpha: 0.58),
                    ],
                    stops: const [0.0, 0.42, 1.0],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Opacity(
                opacity: 0.08,
                child: CustomPaint(painter: MatrixRainPainter()),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 9,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.64),
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(
                      color: const Color(0xFF00FF5F).withValues(alpha: 0.42),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF00FF5F).withValues(alpha: 0.18),
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
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 190, maxWidth: 195),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.76),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: const Color(0xFF00FF5F).withValues(alpha: 0.28),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.45),
                        blurRadius: 22,
                        offset: const Offset(0, 12),
                      ),
                    ],
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.05),
                          border: Border(
                            bottom: BorderSide(
                              color: const Color(
                                0xFF00FF5F,
                              ).withValues(alpha: 0.16),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            _TerminalDot(color: Color(0xFFFF5F57)),
                            SizedBox(width: 6),
                            _TerminalDot(color: Color(0xFFFFBD2E)),
                            SizedBox(width: 6),
                            _TerminalDot(color: Color(0xFF28C840)),
                            SizedBox(width: 10),
                            Text(
                              'forge.sh',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(14, 11, 14, 13),
                        child: Text(
                          '> forge_brand_identity();\n> build_mobile_apps();\n> ship_digital_products();',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 13,
                            height: 1.42,
                            color: Color(0xFFB7FFAD),
                            fontWeight: FontWeight.w700,
                            shadows: [
                              Shadow(color: Colors.black, blurRadius: 8),
                            ],
                          ),
                        ),
                      ),
                    ],
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

class _TerminalDot extends StatelessWidget {
  final Color color;

  const _TerminalDot({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
