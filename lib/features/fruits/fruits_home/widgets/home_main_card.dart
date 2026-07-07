import 'package:custom_paint/features/fruits/fruits_details/fruits_details.dart';
import 'package:custom_paint/features/fruits/fruits_home/widgets/arrow_widget.dart';
import 'package:custom_paint/features/fruits/fruits_home/widgets/main_card.dart';
import 'package:flutter/material.dart';

class LeftMainCard extends StatelessWidget {
  const LeftMainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [Positioned(
      top: 230,
      left: 40,
      child: MainCard(productName: 'Pitaya', productprice: '4.95'),
    ),
    Positioned(
      left: 35,
      top: 190,
      child: Image.asset('assets/pitahya.png', scale: 5.5),
    ),
    Positioned(
      left: 135,
      top: 320,
      child: ArrowIcon(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => FruitsDetails()),
          );
        },
      ),
      //
    ),],);
  }
}


class RightMainCard extends StatelessWidget {
  const RightMainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [Positioned(
      top: 225,
      right: 40,
      child: MainCard(productName: 'Papaya', productprice: '3.90'),
    ),
    Positioned(
      right: 20,
      top: 185,
      child: Image.asset('assets/papaya.png', scale: 5.5),
    ),
    Positioned(
      right: 40,
      top: 320,
      child: ArrowIcon(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => FruitsDetails()),
          );
        },
      ),
    ),],);
  }
}

