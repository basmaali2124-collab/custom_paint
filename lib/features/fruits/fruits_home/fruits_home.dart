import 'package:custom_paint/features/fruits/fruits_home/widgets/big_card.dart';
import 'package:custom_paint/features/fruits/fruits_home/widgets/home_main_card.dart';
import 'package:custom_paint/features/fruits/fruits_home/widgets/navigation_button_bar.dart';
import 'package:custom_paint/features/fruits/fruits_home/widgets/product_counter.dart';
import 'package:custom_paint/features/fruits/fruits_home/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class FruitsHome extends StatelessWidget {
  const FruitsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.white.withValues(alpha: 0.1),
                BlendMode.lighten,
              ),
              child: Image.asset(
                'assets/blackground.png',
                width: 700,
                fit: BoxFit.fill,
              ),
            ),
            ProfileWidget(),
            ProductCounter(),
            LeftMainCard(),
            RightMainCard(),
            BigCard(),
            NavigationButtonBar()
          ],
        ),
      ),
    );
  }
}

