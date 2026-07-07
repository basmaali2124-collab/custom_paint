import 'package:flutter/material.dart';

class SelectedPainter extends CustomPainter {
  final bool isSelected;

  SelectedPainter({required this.isSelected});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = isSelected ? Colors.white : Colors.transparent
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.arcToPoint(
      Offset(size.width, 0),
      radius: const Radius.circular(60),
      clockwise: false,
    );
    path.lineTo(size.width, size.height);
    path.arcToPoint(
      Offset(0, size.height),
      radius: const Radius.circular(50),
      clockwise: false,
    );
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant SelectedPainter oldDelegate) {
    return oldDelegate.isSelected != isSelected;
  }
}
