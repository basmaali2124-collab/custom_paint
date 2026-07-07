import 'package:custom_paint/features/plant/plant_details/plant_details.dart';
import 'package:custom_paint/features/plant/plant_home/widgets/plant_card.dart';
import 'package:custom_paint/features/plant/shared_widgets/bottom_button.dart';
import 'package:custom_paint/features/plant/shared_widgets/left_button.dart';
import 'package:custom_paint/features/plant/shared_widgets/right_button.dart';
import 'package:flutter/material.dart';

class ExpandedPartWithLastCard extends StatelessWidget {
  const ExpandedPartWithLastCard({
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
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: PlantCard(
              width: width,
              withImage: false,
              url: 'assets/plant.png',
              name: 'Sanseveria',
              price: '£100',
              rate: 5,
              counter: 6,
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => PlantDetails()));
              },
            ),
          ),
          Positioned(
            top: -30,
            left: -20,
            child: Image.asset('assets/plant2.png', scale: 2),
          ),
          Positioned(
            left: width * 0.4,
            bottom: 0,
            child: CustomPaint(painter: BottomButton(), size: Size(100, 50)),
          ),
          Positioned(
            left: width * 0.46,
            bottom: 5,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.lock_rounded)),
          ),
          Positioned(
            left: 0,
            bottom: height * 0.08,
            child: CustomPaint(painter: LeftButton(), size: Size(50, 100)),
          ),
          Positioned(
            left: 5,
            bottom: height * 0.13,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),

          Positioned(
            right: 0,
            bottom: height * 0.08,
            child: CustomPaint(painter: RightButton(), size: Size(50, 100)),
          ),
          Positioned(
            right: 5,
            bottom: height * 0.13,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
