import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mess/Screens/comments.dart';
import 'package:mess/Screens/mess.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> pages = [
    const Mess(),
    const Comments(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[currentPage],
        bottomNavigationBar: Container(
          color: Colors.white,
          child: GNav(
            backgroundColor: Colors.green,
            gap: 8,
            activeColor: Colors.black,
            color: Colors.white,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            duration: const Duration(milliseconds: 800),
            tabs: const [
              GButton(
                margin: EdgeInsets.only(left: 50.0),
                icon: Icons.home,
                iconSize: 30.0,
              ),
              GButton(
                margin: EdgeInsets.only(right: 50.0),
                icon: Icons.people,
                iconSize: 30.0,
              ),
            ],
            selectedIndex: currentPage,
            onTabChange: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
