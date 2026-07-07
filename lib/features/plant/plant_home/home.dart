import 'package:custom_paint/features/fruits/fruits_home/fruits_home.dart';
import 'package:custom_paint/features/plant/plant_home/widgets/expanded_part_with_last_card.dart';
import 'package:custom_paint/features/plant/plant_home/widgets/plant_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Color(0xFF136109),
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF136109),
        leading: IconButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => FruitsHome()));
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
        ),
        title: Text(
          'Decorative flowers',
          style: GoogleFonts.playfairDisplay(
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Icon(Icons.list_sharp),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 6),
            child: PlantCard(
              width: width,
              url: 'assets/plant.png',
              name: 'Banana tree',
              price: '£78',
              rate: 4,
              counter: 2,
              onTap: () {},
            ),
          ),
          // SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 6),

            child: PlantCard(
              width: width,
              url: 'assets/plant3.png',
              name: 'Perperomia',
              price: '£35',
              rate: 3,
              counter: 3,
              onTap: () {},
            ),
          ),
          SizedBox(height: 12),
          ExpandedPartWithLastCard(width: width, height: height),
        ],
      ),
    );
  }
}
