import 'package:donut_shop_toturial/util/donut-tila.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // list of donuts
    List donutOnSale = [
      // [ donutFlover, donutPrice, donutColor, imageName ]
      ["Ice Cream", "36", Colors.blue, "assets/images/icecream-donut.png"],
      ["Strawberry", "45", Colors.red, "assets/images/strawberry-donut.png"],
      ["grape Ape", "74", Colors.purple, "assets/images/grape-donut.png"],
      ["Choco", "95", Colors.brown, "assets/images/chocolate-donut.png"],
    ];

    return Scaffold(
      body: GridView.builder(
        itemCount: donutOnSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlover: donutOnSale[index][0],
            donutPrice: donutOnSale[index][1],
            donutColor: donutOnSale[index][2],
            imageName: donutOnSale[index][3],
          );
        },
      ),
    );
  }
}
