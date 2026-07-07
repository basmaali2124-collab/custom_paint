import 'package:custom_paint/features/plant/plant_home/widgets/close_paint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantCard extends StatefulWidget {
  PlantCard({
    super.key,
    required this.width,
    required this.url,
    required this.name,
    required this.price,
    this.withImage = true,
    required this.rate,
    required this.counter,
    required this.onTap,
  });

  final double width;
  final double rate;
  final int counter;
  final String url;
  final String name;
  final String price;
  final VoidCallback onTap;
  bool withImage;

  @override
  State<PlantCard> createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  @override
  Widget build(BuildContext context) {
    return
    ElevatedButton(
      onPressed: widget.onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), 
        ),
        padding: EdgeInsets.all(0),
      ),
      child: SizedBox(
        width: widget.width,
        height: 120,
        child: Stack(
          children: [
            Row(
              children: [
                widget.withImage == true
                    ? Image.asset(widget.url, scale: 3)
                    : SizedBox(width: 100),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StarRating(
                      rating: widget.rate,
                      color: Colors.amber,
                      allowHalfRating: false,
                      onRatingChanged: (rating) {},
                    ),
                    Text(
                      widget.name,
                      style: GoogleFonts.playfairDisplay(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      widget.price,
                      style: GoogleFonts.playfairDisplay(
                        textStyle: TextStyle(
                          color: Color(0xFF163829),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 12),
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Color(0xFF6EC971),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.minimize_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          ' x${widget.counter} ',
                          style: GoogleFonts.playfairDisplay(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Color(0xFF6EC971),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(Icons.add, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // ),
            Positioned(
              right: 0,
              top: 36,
              child: SizedBox(
                width: 200,
                height: 50,
                child: Stack(
                  children: [
                    CustomPaint(painter: ClosePaint(), size: Size(200, 50)),
                    Positioned(
                      top: 14,
                      left: 136,
                      child: Icon(
                        Icons.lock_rounded,
                        size: 18,
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
}
