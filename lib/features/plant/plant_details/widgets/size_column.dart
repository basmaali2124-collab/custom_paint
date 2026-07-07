import 'package:flutter/material.dart';

class SizeColumn extends StatelessWidget {
  const SizeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: Color(0xFFB7D79A),
          child: Text('M'),
        ),
        SizedBox(height: 5),
        CircleAvatar(
          radius: 15,
          backgroundColor: Color(0xFFECF8ED),
          child: Text('L', style: TextStyle(color: const Color(0xFFEBE5E5))),
        ),
        SizedBox(height: 5),
        CircleAvatar(
          radius: 15,
          backgroundColor: Color(0xFFECF8ED),
          child: Text('xL', style: TextStyle(color: const Color(0xFFEBE5E5))),
        ),
      ],
    );
  }
}
