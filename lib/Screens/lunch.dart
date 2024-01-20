import 'package:flutter/material.dart';

class Lunch extends StatefulWidget {
  const Lunch({super.key});

  @override
  State<Lunch> createState() => _LunchState();
}

class _LunchState extends State<Lunch> {
  List<List<String>> lunchitems = [
    ['Eggs', 'Toast'],
    ['Oatmeal', 'Fruit Salad'],
    ['Pancakes', 'Smoothie'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: lunchitems.length * 2, // Adjust as needed
          itemBuilder: (BuildContext context, int index) {
            int row = index ~/ 2;
            int col = index % 2;

            return Card(
              child: Center(
                child: Text(
                  lunchitems[row][col],
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
