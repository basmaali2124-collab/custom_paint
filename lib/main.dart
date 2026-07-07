
import 'package:custom_paint/features/plant/plant_home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF163829),
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const //FruitsHome()//PlantDetails()//
      Home()
    );
  }
}


