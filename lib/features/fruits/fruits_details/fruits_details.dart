import 'package:custom_paint/features/fruits/fruits_details/widgets/add_to_cart.dart';
import 'package:custom_paint/features/fruits/fruits_details/widgets/build_option.dart';
import 'package:custom_paint/features/fruits/fruits_details/widgets/green_dot.dart';
import 'package:custom_paint/features/fruits/fruits_details/widgets/top_left_part.dart';
import 'package:custom_paint/features/fruits/fruits_details/widgets/weight_widget.dart';
import 'package:custom_paint/features/fruits/fruits_home/widgets/product_counter.dart';
import 'package:flutter/material.dart';

class FruitsDetails extends StatefulWidget {
  const FruitsDetails({super.key});
  @override
  State<FruitsDetails> createState() => _FruitsDetailsState();
}

class _FruitsDetailsState extends State<FruitsDetails> {
  int selectedIndex = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          children: [
            Image.asset(
              'assets/pitahaya_background.jpg',
              width: 700,
              fit: BoxFit.fill,
            ),
            const TopLeftPart(),
            const ProductCounter(),
            Positioned(
              bottom: 280,
              left: 30,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: GreenDot(),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'SELECT\nQUANTITY',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10, color: Color(0xFFD6D2D2)),
                  ),
                ],
              ),
            ),
            const AddToCartCard(),
            Positioned(
              left: -50,
              bottom: -50,
              child: Container(
                width: 270,
                height: 270,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF989494)),
                ),
              ),
            ),
            SelectOption(
              left: 30,
              bottom: 195,
              value: 1,
              text: '1',
              selectedValue: selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            WeightWidget(
              selectedIndex: selectedIndex,
              left: 38,
              bottom: 170,
              angle: 1.5,
              value: 1,
            ),
            SelectOption(
              left: 150,
              bottom: 160,
              value: 5,
              text: '5\npack',
              selectedValue: selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = 5;
                });
              },
            ),
             WeightWidget(
              selectedIndex: selectedIndex,
              left: 130,
              bottom: 140,
              angle: 2.3,
              value: 5,
            ),
            SelectOption(
              left: 190,
              bottom: 30,
              value: 10,
              text: '10\npack',
              selectedValue: selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = 10;
                });
              },
            ),
            WeightWidget(
              selectedIndex: selectedIndex,
              left: 160,
              bottom: 35,
              angle: 3,
              value: 10,
            ),
            Positioned(
              left: -30,
              bottom: -30,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _getPrice().toString(),
                      style: const TextStyle(
                        height: 1.2,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '$selectedIndex pack',
                      style: const TextStyle(
                        height: 1,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  double _getPrice() {
    switch (selectedIndex) {
      case 1:
        return 5.0;
      case 5:
        return 24.5;
      case 10:
        return 45.0;
      default:
        return 0;
    }
  }
}
