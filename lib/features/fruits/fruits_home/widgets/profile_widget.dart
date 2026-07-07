import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -30,
          left: -30,
          child: Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF5F714C)),
            ),
            child: Center(
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFB3E353),
                  ),
                ),
                child: Center(
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/profile_pic.jpg'),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 40,
          top: 116,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exotic ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              Text(
                'fruits',
                style: TextStyle(fontSize: 20, color: const Color(0xFFB3E353)),
              ),
            ],
          ),
        ),
        Positioned(
          right: 40,
          top: 165,
          child: Text(
            'See more',
            style: TextStyle(fontSize: 14, color: const Color(0xFFB3E353)),
          ),
        ),
      ],
    );
  }
}
