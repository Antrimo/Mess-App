import 'package:flutter/material.dart';
import 'package:mess/values.dart';

class Dinner extends StatefulWidget {
  const Dinner({super.key});

  @override
  State<Dinner> createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: ListView.builder(
          itemCount: dinnerItems.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 60,
              child: Card(
                elevation: 10.0,
                child: Center(
                  child: Text(
                    dinnerItems[index],
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
