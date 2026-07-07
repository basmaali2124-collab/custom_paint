import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key, required this.productName, required this.productprice,
  });
final String productName;
final String productprice;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xF86B6D6B),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(60),
        ),
      ),
      padding: EdgeInsets.only(left: 16,right: 16,top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productName,
            style: TextStyle(
              fontSize: 24,
              color: const Color(0xFFFBF6F6),
            ),
          ),
          Row(
            children: [
              Text(
                'PREMIUM  ♔',
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xFFB3E353),
                ),
              ),
              
            ],
          ),
          Text(
            productprice,
            style: TextStyle(
              fontSize: 20,
              color: const Color(0xFFFBF6F6),
            ),
          ),
        ],
      ),
    );
  }
}