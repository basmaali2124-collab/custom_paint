import 'package:flutter/material.dart';

class RightButton extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width,size.height);
    path.quadraticBezierTo(size.width*0.75,size.height*0.85,size.width*0.5,size.height*0.75);
    path.arcToPoint(Offset(size.width*0.5, size.height *0.25),radius: Radius.circular(30),);
     path.quadraticBezierTo(size.width*0.75,size.height*0.15,size.width,0);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
