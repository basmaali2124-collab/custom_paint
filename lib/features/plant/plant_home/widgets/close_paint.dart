import 'package:flutter/material.dart';

class ClosePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFF6EC971)
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(size.width, 0);
    path.quadraticBezierTo(
      size.width * 0.98,
      size.height * 0.2,
      size.width * 0.85,
      size.height * 0.2,
    );
    path.lineTo(size.width * 0.7, size.height * 0.2);
    path.arcToPoint(
      clockwise: false,
      Offset(size.width * 0.7, size.height * 0.75),
      radius: Radius.circular(4),
    );

    path.lineTo(size.width * 0.85, size.height * 0.75);
    path.quadraticBezierTo(
      size.width * 0.98,
      size.height * 0.75,
      size.width,
      size.height - 5,
    );
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
