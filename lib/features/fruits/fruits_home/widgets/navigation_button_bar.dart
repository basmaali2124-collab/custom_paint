import 'package:custom_paint/features/fruits/fruits_home/widgets/navigate_button.dart';
import 'package:custom_paint/features/plant/plant_home/home.dart';
import 'package:flutter/material.dart';

class NavigationButtonBar extends StatelessWidget {
  const NavigationButtonBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [Positioned(
      left: 40,
      right: 40,
      bottom: 8,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
        ),
      ),
    ),
    Positioned(
      bottom: 20,
      left: 60,
      child: NavigateButton(
        iconData: Icons.home_outlined,
        buttonName: 'Home',
        onPressed: () {},
      ),
    ),
    Positioned(
      bottom: 20,
      left: 225,
      child: NavigateButton(
        iconData: Icons.search_sharp,
        buttonName: 'Search',
        onPressed: () {},
      ),
    ),
    Positioned(
      bottom: 20,
      right: 60,
      child: NavigateButton(
        iconData: Icons.workspace_premium_outlined,
        premium: true,
        buttonName: 'Premium',
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => Home()));
        },
      ),
    ),],);
  }
}

