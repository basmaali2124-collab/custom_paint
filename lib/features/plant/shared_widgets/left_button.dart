import 'package:flutter/material.dart';

class LeftButton extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.12,
      size.width * 0.5,
      size.height * 0.25,
    );
    path.arcToPoint(
      Offset(size.width * 0.5, size.height * 0.75),
      radius: Radius.circular(30),
    );
    path.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.87,
      0,
      size.height,
    );

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
