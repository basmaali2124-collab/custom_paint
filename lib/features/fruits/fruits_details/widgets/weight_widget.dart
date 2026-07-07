import 'package:custom_paint/features/fruits/fruits_details/widgets/selected_circle.dart';
import 'package:flutter/material.dart';

class WeightWidget extends StatelessWidget {
  const WeightWidget({
    super.key,
    required this.selectedIndex,
    required this.left,
    required this.bottom,
    required this.angle,
    required this.value,
  });

  final int selectedIndex;
  final double left;
  final double bottom;
  final double angle;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left, //160,
      bottom: bottom, //35,
      child: Transform.rotate(
        angle: angle, //3,
        child: CustomPaint(
          size: const Size(40, 30),
          painter: SelectedPainter(isSelected: selectedIndex == value),
        ),
      ),
    );
  }
}
