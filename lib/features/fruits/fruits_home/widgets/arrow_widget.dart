import 'package:flutter/material.dart';

class ArrowIcon extends StatelessWidget {
  const ArrowIcon({
    super.key, required this.onPressed,
  });
 final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 28,
      height: 28,
      child: IconButton(
        iconSize: 20,
        padding: EdgeInsets.all(5),
        style: IconButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        onPressed:onPressed,
        icon: Icon(Icons.arrow_forward, color: Colors.black),
      ),
    );
  }
}
