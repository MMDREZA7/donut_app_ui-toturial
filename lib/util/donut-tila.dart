import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlover;
  final String donutPrice;
  final donutColor;
  final String imageName;

  final double borderRadius = 12;

  const DonutTile({
    super.key,
    required this.donutColor,
    required this.donutFlover,
    required this.donutPrice,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: donutColor[50],
      ),
      child: Column(
        children: [
          // price
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: donutColor[100],
                  borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(15),
                    bottomLeft: Radius.circular(borderRadius),
                  ),
                ),
                child: Text(
                  "\$ " + donutPrice,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: donutColor[800],
                  ),
                ),
              ),
            ],
          ),

          // donut picture
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
            child: Image.asset(
              imageName,
            ),
          ),

          // donut flaver
          Text(
            donutFlover,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: donutColor[900],
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 4),

          // love icon + add button
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // love icon
                Icon(
                  Icons.favorite,
                  color: Colors.pink[400],
                ),

                // plus button
                Icon(
                  Icons.add,
                  color: Colors.grey[800],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
