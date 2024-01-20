import 'package:flutter/material.dart';

class Breakfast extends StatefulWidget {
  const Breakfast({super.key});

  @override
  State<Breakfast> createState() => _BreakfastState();
}

class _BreakfastState extends State<Breakfast> {
  // List of food items for breakfast
  List<List<String>> breakfastItems = [
    ['Eggs', 'Toast'],
    ['Oatmeal', 'Fruit Salad'],
    ['Pancakes', 'Smoothie'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: breakfastItems.length * 2, // Adjust as needed
          itemBuilder: (BuildContext context, int index) {
            int row = index ~/ 2;
            int col = index % 2;

            return Card(
              child: Center(
                child: Text(
                  breakfastItems[row][col],
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
