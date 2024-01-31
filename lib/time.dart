import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  const Time({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Page'),
      ),
      body: const Center(
        child: Text('Your Time Page Content Goes Here'),
      ),
    );
  }
}
