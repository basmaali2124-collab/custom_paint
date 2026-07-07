import 'package:flutter/material.dart';

class SelectOption extends StatelessWidget {
  final double left;
  final double bottom;
  final int value;
  final String text;
  final int selectedValue;
  final VoidCallback onTap;

  const SelectOption({
    super.key,
    required this.left,
    required this.bottom,
    required this.value,
    required this.text,
    required this.selectedValue,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedValue == value;

    return Positioned(
      left: left,
      bottom: bottom,
      child: GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: 25,
          backgroundColor:
              isSelected ? Colors.white : const Color(0xFF5B5A5A),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontSize: value == 1 ? 24 : 12,
              height: 1.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
  
}
