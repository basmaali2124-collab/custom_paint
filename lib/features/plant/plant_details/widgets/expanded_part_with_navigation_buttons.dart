import 'package:custom_paint/features/plant/plant_details/widgets/counter_widget.dart';
import 'package:custom_paint/features/plant/plant_home/home.dart';
import 'package:custom_paint/features/plant/shared_widgets/bottom_button.dart';
import 'package:custom_paint/features/plant/shared_widgets/left_button.dart';
import 'package:custom_paint/features/plant/shared_widgets/right_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedPartWithNavigationButtons extends StatelessWidget {
  const ExpandedPartWithNavigationButtons({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            left: width * 0.3,
            top: 4,
            child: CustomPaint(painter: CounterWidget(), size: Size(200, 90)),
          ),
          Positioned(
            left: width * 0.46,
            top: 4,
            child: Text(
              'x2',
              style: GoogleFonts.playfairDisplay(
                textStyle: const TextStyle(
                  fontSize: 36,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            left: width * 0.4,
            bottom: 0,
            child: CustomPaint(
              painter: BottomButton(isHome: false),
              size: Size(100, 50),
            ),
          ),
          Positioned(
            left: width * 0.47,
            bottom: 5,
            child: Icon(Icons.lock_rounded),
          ),

          Positioned(
            left: width * 0.17,
            bottom: 40,
            child: Icon(Icons.add, size: 40),
          ),

          Positioned(
            right: width * 0.17,
            bottom: 53,
            child: Icon(Icons.minimize_outlined, size: 40),
          ),
          Positioned(
            left: 0,
            bottom: height * 0.08,
            child: CustomPaint(painter: LeftButton(), size: Size(50, 100)),
          ),
          Positioned(left: 5, bottom: height * 0.14, child: Icon(Icons.person)),

          Positioned(
            right: 0,
            bottom: height * 0.08,
            child: CustomPaint(painter: RightButton(), size: Size(50, 100)),
          ),
          Positioned(
            right: 0,
            bottom: height * 0.139,
            child: IconButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Home()));
              },
              icon: Icon(Icons.home),
            ),
          ),
        ],
      ),
    );
  }
}
