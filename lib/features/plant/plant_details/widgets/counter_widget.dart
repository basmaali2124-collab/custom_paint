import 'package:flutter/material.dart';

class CounterWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 170, 231, 151)
      ..style = PaintingStyle.fill;
    final path = Path();
    path.moveTo(size.width * 0.25, 0);
    path.arcToPoint(
      clockwise: false,
      Offset(size.width * 0.75, 0),
      radius: Radius.circular(240),
    );
    path.quadraticBezierTo(
      size.width,
      size.height * 0.9,
      size.width * 0.7,
      size.height * 0.75,
    );
    path.arcToPoint(
      clockwise: false,
      Offset(size.width * 0.3, size.height * 0.75),
      radius: Radius.circular(90),
    );
    path.quadraticBezierTo(0, size.height * 0.9, size.width * 0.25, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
