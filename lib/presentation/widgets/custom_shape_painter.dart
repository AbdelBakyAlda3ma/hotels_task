import 'package:flutter/material.dart';

class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Paint paint = Paint();
    // paint.color = const Color(0xff196cba);
    final paint = Paint();
    paint.color = const Color(0xff196cba);
    // paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 5;

    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(0.7 * size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
    paint.color = Colors.white;
    paint.strokeWidth = 2;
    canvas.drawLine(
        Offset(
          size.width,
          size.height,
        ),
        Offset(
          0.7 * size.width,
          0,
        ),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
