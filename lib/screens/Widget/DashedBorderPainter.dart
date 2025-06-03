import 'package:flutter/material.dart';

class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gap;

  DashedBorderPainter({
    this.color = Colors.grey,
    this.strokeWidth = 2.0,
    this.gap = 5.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint dashedPaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double x = 0;
    double y = 0;
    final double w = size.width;
    final double h = size.height;

    // top line
    while (x < w) {
      canvas.drawLine(
        Offset(x, y),
        Offset(x + gap, y),
        dashedPaint,
      );
      x += gap * 2;
    }

    x = w;
    y = 0;
    // right line
    while (y < h) {
      canvas.drawLine(
        Offset(x, y),
        Offset(x, y + gap),
        dashedPaint,
      );
      y += gap * 2;
    }

    x = w;
    y = h;
    // bottom line
    while (x > 0) {
      canvas.drawLine(
        Offset(x, y),
        Offset(x - gap, y),
        dashedPaint,
      );
      x -= gap * 2;
    }

    x = 0;
    y = h;
    // left line
    while (y > 0) {
      canvas.drawLine(
        Offset(x, y),
        Offset(x, y - gap),
        dashedPaint,
      );
      y -= gap * 2;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}