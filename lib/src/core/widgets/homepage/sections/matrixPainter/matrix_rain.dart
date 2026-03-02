// src/core/widgets/homepage/sections/matrixPainter/matrix_rain.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/matrixPainter/matrix_pain_painter.dart';

class MatrixRain extends StatelessWidget {
  const MatrixRain({super.key});

  @override
  Widget build(BuildContext context) {
    // Nur optischer "Code Rain" Effekt, kein echtes Animationssystem
    return CustomPaint(painter: MatrixRainPainter());
  }
}
