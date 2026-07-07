import 'package:custom_paint/features/fruits/fruits_details/fruits_details.dart';
import 'package:custom_paint/features/fruits/fruits_home/widgets/arrow_widget.dart';
import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 100,
          left: 40,
          right: 40,
          child: Center(
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                color: Color(0xF86B6D6B),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(60),
                ),
              ),
              padding: EdgeInsets.only(right: 16, top: 16, bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 180,
                    height: 180,
                    child: Image.asset('assets/wtermilon.png', fit: BoxFit.cover),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Guava',
                        style: TextStyle(
                          fontSize: 28,
                          color: const Color(0xFFFBF6F6),
                        ),
                      ),
                      Text(
                        'PREMIUM  ♔',
                        style: TextStyle(
                          fontSize: 22,
                          color: const Color.fromARGB(255, 168, 197, 112),
                        ),
                      ),
                    ],
                  ),
                   SizedBox(width: 12,),
                  Column(  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                   
                    children: [
                      Text(
                        '2.75',
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 239, 233, 233),
                        ),
                      ),
                      Text(
                        '2.00',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
         Positioned(
      right: 40,
      bottom: 100,
      child: ArrowIcon(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => FruitsDetails()),
          );
        },
      ),
    ),
      ],
    );
  }
}
