import 'package:custom_paint/features/plant/plant_details/widgets/expanded_part_with_navigation_buttons.dart';
import 'package:custom_paint/features/plant/plant_details/widgets/main_paint.dart';
import 'package:custom_paint/features/plant/plant_details/widgets/size_column.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantDetails extends StatelessWidget {
  const PlantDetails({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Color(0xFF136109), 
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(width, height * 0.7),
                  painter: MainPaint(),
                ),
                Positioned(left: 12, top: height * 0.2, child: SizeColumn()),
                Positioned(
                  left: 88,
                  child: Transform.rotate(
                    angle: 0.3,
                    child: Image.asset(
                      'assets/plant2_with_shadow.png',
                      scale: 1.4,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 160,
                  left: 272,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFABC693),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromARGB(255, 231, 238, 231),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 170,
                  child: Column(
                    children: [
                      Text(
                        'Strelitzia',
                        style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'BIRD OF PARADISE',
                        style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 92, 92, 92),
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        '£100',
                        style: GoogleFonts.playfairDisplay(
                          textStyle: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ExpandedPartWithNavigationButtons(width: width, height: height),
        ],
      ),
    );
  }
}
