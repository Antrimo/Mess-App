import 'package:flutter/material.dart';
import 'package:mess/Resources/theme.dart';
import 'package:mess/Screens/breakfast.dart';
import 'package:mess/Screens/dinner.dart';
import 'package:mess/Screens/lunch.dart';
import 'package:table_calendar/table_calendar.dart';

class Mess extends StatefulWidget {
  const Mess({Key? key}) : super(key: key);

  @override
  State<Mess> createState() => _MessState();
}

class _MessState extends State<Mess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Center(
          child: Text(
            'JUIT Mess',
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Cursive",
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2024, 1, 1),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
            calendarFormat: CalendarFormat.month,
            onPageChanged: (focusedDay) {
              //print("Page changed to $focusedDay");
            },
          ),
          Container(
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                'Today\'s Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          const DefaultTabController(
            length: 3,
            child: Expanded(
              child: Column(
                children: [
                  TabBar(tabs: [
                    Tab(
                      child: Text(
                        'Breakfast',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Cursive",
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Lunch',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Cursive",
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Snacks',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Cursive",
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Dinner',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Cursive",
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ]),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Breakfast(),
                        Lunch(),
                        Dinner(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
