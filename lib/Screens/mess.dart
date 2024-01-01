import 'package:flutter/material.dart';
import 'package:mess/Screens/Mess/today.dart';
import 'package:mess/Screens/Mess/tomorrow.dart';

class Mess extends StatefulWidget {
  const Mess({super.key});

  @override
  State<Mess> createState() => _MessState();
}

class _MessState extends State<Mess> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.amber,
            title: const Center(
              child: Text(
                "JUIT Mess",
                style: TextStyle(color: Colors.white),
              ),
            ),
            bottom: const TabBar(
              labelPadding: EdgeInsets.all(3),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3.0,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: "Today",
                ),
                Tab(
                  text: "Tomorrow",
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: const TabBarView(
            children: [
              Today(),
              Tomorrow(),
            ],
          )),
    );
  }
}
