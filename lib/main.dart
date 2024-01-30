import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:mess/Resources/theme.dart';
import 'package:mess/values.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          children: [
            const SizedBox(
              height: 125,
            ),
            const Text(
              "Today's Menu",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 500.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
              ),
              items: [
                buildMenuCard("Breakfast", breakfastMenu, 0),
                buildMenuCard("Lunch", lunchMenu, 1),
                buildMenuCard("Dinner", dinnerMenu, 2),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 40,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    SizedBox(width: 60),
                    Icon(Icons.lock_clock_rounded, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuCard(String mealType, List<String> menuItems, int index) {
    return Center(
      child: Container(
        width: 300.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Image.asset(
                foodImages[index],
                width: 160.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50), // Adjust this value for spacing
                Text(
                  mealType,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: menuItems
                      .map((item) => ListTile(
                            title: Text(
                              item,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
