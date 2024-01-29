import 'package:flutter/material.dart';

import 'package:mess/Resources/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          children: [
            const SizedBox(
              height: 125,
            ),
            const Text(
              "Today's Menu",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 500.0,
                width: 300.0,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: 200,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            )
          ],
        ),
        // bottomNavigationBar: const Padding(
        //   padding: EdgeInsets.all(50.0),
        //   child: GNav(
        //       // tabBorderRadius: 15,
        //       backgroundColor: Colors.black,
        //       activeColor: Colors.white,
        //       color: Colors.white,
        //       // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        //       tabs: [
        //         GButton(icon: Icons.home),
        //         GButton(icon: Icons.lock_clock),
        //       ]),
        // ),
      ),
    );
  }
}
