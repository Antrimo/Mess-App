import 'package:flutter/material.dart';
import 'package:mess/values.dart';

class Breakfast extends StatefulWidget {
  const Breakfast({
    super.key,
  });

  @override
  State<Breakfast> createState() => _BreakfastState();
}

class _BreakfastState extends State<Breakfast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: ListView.builder(
          itemCount: breakfastItems.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 60,
              child: Card(
                elevation: 10.0,
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
