import 'package:flutter/material.dart';

class Dinner extends StatefulWidget {
  const Dinner({super.key});

  @override
  State<Dinner> createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
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
      backgroundColor: Colors.orange,
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
