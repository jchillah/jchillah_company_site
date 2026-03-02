// src/core/widgets/matrix_pain_painter.dart
import 'package:flutter/material.dart';

class MatrixRainPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF00FF5F).withOpacity(0.5)
      ..strokeWidth = 1.2;

    const columns = 14;
    final columnWidth = size.width / columns;

    for (int i = 0; i < columns; i++) {
      final x = (i + 0.5) * columnWidth;
      final startY = (i * 23) % size.height * 0.5;
      final endY = startY + size.height * 0.6;
      canvas.drawLine(Offset(x, startY), Offset(x, endY), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
