import 'package:flutter/material.dart';

class Tomorrow extends StatefulWidget {
  const Tomorrow({super.key});

  @override
  State<Tomorrow> createState() => _TomorrowState();
}

class _TomorrowState extends State<Tomorrow> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Tomorrow'),
      ),
    );
  }
}
