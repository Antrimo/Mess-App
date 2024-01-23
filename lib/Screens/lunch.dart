import 'package:flutter/material.dart';
import 'package:mess/values.dart';

class Lunch extends StatefulWidget {
  const Lunch({super.key});

  @override
  State<Lunch> createState() => _LunchState();
}

class _LunchState extends State<Lunch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ListView.builder(
          itemCount: lunchItems.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 60,
              child: Card(
                elevation: 10.0,
                child: Center(
                  child: Text(
                    lunchItems[index],
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
