import 'package:flutter/material.dart';

class BottomButton extends CustomPainter {
  BottomButton({this.isHome = true});
  bool isHome;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =  Colors.white 
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height);
    path.quadraticBezierTo(
      size.width * 0.16,
      size.height * 0.76,
      size.width * 0.25,
      size.height * 0.5,
    );
    path.arcToPoint(
      Offset(size.width * 0.75, size.height * 0.5),
      radius: Radius.circular(30),
    );
    path.quadraticBezierTo(
      size.width * 0.84,
      size.height * 0.75,
      size.width,
      size.height,
    );
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
