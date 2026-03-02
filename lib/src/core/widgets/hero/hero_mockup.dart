// src/core/widgets/hero/hero_mockup.dart

import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/matrixPainter/matrix_pain_painter.dart';

class HeroMockup extends StatelessWidget {
  const HeroMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: const Color(0xFF00FF5F).withOpacity(0.5)),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF00130A), Color(0xFF00351C)],
          ),
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.12,
              child: CustomPaint(painter: MatrixRainPainter()),
            ),
            const Center(
              child: Text(
                '> forge_app();\n> deploy_business_solution();',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 16,
                  color: Color(0xFF00FF5F),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
