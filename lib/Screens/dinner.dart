import 'package:flutter/material.dart';

class Dinner extends StatefulWidget {
  const Dinner({super.key});

  @override
  State<Dinner> createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
  List<List<String>> dinnerItems = [
    ['Eggs', 'Toast'],
    ['Oatmeal', 'Fruit Salad'],
    ['Pancakes', 'Smoothie'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: dinnerItems.length * 2, // Adjust as needed
          itemBuilder: (BuildContext context, int index) {
            int row = index ~/ 2;
            int col = index % 2;

            return Card(
              child: Center(
                child: Text(
                  dinnerItems[row][col],
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
