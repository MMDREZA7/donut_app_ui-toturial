import 'package:donut_shop_toturial/tab/burger_tab.dart';
import 'package:donut_shop_toturial/tab/donut_tab.dart';
import 'package:donut_shop_toturial/tab/pancake_tab.dart';
import 'package:donut_shop_toturial/tab/pizza_tab.dart';
import 'package:donut_shop_toturial/tab/smoothie_tab.dart';
import 'package:donut_shop_toturial/util/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // my tabs
    List<Widget> myTabs = [
      // donut tab
      const MyTab(
        iconPath: "assets/icons/donut.png",
      ),

      // burger tab
      const MyTab(
        iconPath: "assets/icons/burger.png",
      ),

      // smoothie tab
      const MyTab(
        iconPath: "assets/icons/smoothie.png",
      ),

      // pancake tab
      const MyTab(
        iconPath: "assets/icons/pancakes.png",
      ),

      // pizza tab
      const MyTab(
        iconPath: "assets/icons/pizza.png",
      ),
    ];

    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          // drawer
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              onPressed: () {
                // open drawer
              },
              icon: const Icon(
                Icons.menu,
                size: 30,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            // account button
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                onPressed: () {
                  // account button tapped
                },
                icon: const Icon(
                  Icons.person,
                  size: 30,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to ",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "Eat",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // tab bar
            TabBar(tabs: myTabs),

            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  DonutTab(),

                  // burger page
                  BurgerTab(),

                  // smoothie page
                  SmoothieTab(),

                  // pancake page
                  PancakeTab(),

                  // pizza page
                  PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
