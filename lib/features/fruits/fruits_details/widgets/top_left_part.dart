import 'package:flutter/material.dart';

class TopLeftPart extends StatelessWidget {
  const TopLeftPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 28,
            height: 28,
            child: IconButton(
              iconSize: 20,
              padding: EdgeInsets.all(5),
              style: IconButton.styleFrom(
                backgroundColor: const Color(0xFFE6E1E1),
              ),
              onPressed: () {Navigator.of(context).pop();},
              icon: Icon(Icons.arrow_back),
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Text(
                'PREMIUM  ♔',
                style: TextStyle(
                  fontSize: 8,
                  color: const Color(0xFF84A85C),
                ),
              )
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Exotic fruits',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'Pitaya',
            style: TextStyle(
              fontSize: 28,
              color: const Color(0xFFD6D2D2),
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: BorderSide(color: const Color(0xFF84A85C)),
              ),
              onPressed: () {},
              child: Text(
                'Nutrition',
                style: TextStyle(
                  fontSize: 8,
                  color: const Color(0xFF84A85C),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
