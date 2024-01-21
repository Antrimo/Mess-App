import 'package:flutter/material.dart';

class Breakfast extends StatefulWidget {
  const Breakfast({
    super.key,
  });

  @override
  State<Breakfast> createState() => _BreakfastState();
}

class _BreakfastState extends State<Breakfast> {
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
      backgroundColor: Colors.green,
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
