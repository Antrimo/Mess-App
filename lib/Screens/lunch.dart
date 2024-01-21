import 'package:flutter/material.dart';

class Lunch extends StatefulWidget {
  const Lunch({super.key});

  @override
  State<Lunch> createState() => _LunchState();
}

class _LunchState extends State<Lunch> {
  List<String> breakfastItems = [
    "Eggs",
    "Toast",
    "Oatmeal",
    "Fruit Salad",
    "Pancakes",
    "Smoothie",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ListView.builder(
          itemCount: breakfastItems.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 50,
              child: Card(
                child: Center(
                  child: Text(
                    breakfastItems[index],
                    style: const TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
