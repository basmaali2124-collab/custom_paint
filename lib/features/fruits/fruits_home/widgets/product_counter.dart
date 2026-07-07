import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCounter extends StatelessWidget {
  const ProductCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Positioned(
        top: 35,
        right: 40,
        child: Container(
          width: 70,
          height: 75,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Center(
            child: Text(
              "10\nProducts",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
        ),
      ),
       Positioned(
              top: 15,
              right: 55,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(CupertinoIcons.bag, color: const Color(0xFFDBDADA)),
              ),
            ),
      ]
    );
  }
}
