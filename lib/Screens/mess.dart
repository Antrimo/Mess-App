import 'package:flutter/material.dart';
import 'package:mess/Resources/theme.dart';
import 'package:table_calendar/table_calendar.dart';

class Mess extends StatefulWidget {
  const Mess({Key? key}) : super(key: key);

  @override
  State<Mess> createState() => _MessState();
}

class _MessState extends State<Mess> {
  final List<String> mealTabs = ['Breakfast', 'Lunch', 'Dinner'];

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
              print("Page changed to $focusedDay");
            },
          ),
          DefaultTabController(
            length: mealTabs.length,
            child: Expanded(
              child: Column(
                children: [
                  TabBar(
                    tabs: mealTabs
                        .map((meal) => Tab(
                              text: meal,
                            ))
                        .toList(),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: mealTabs.map((meal) {
                        return const Tab(
                          child: Center(
                            child: Placeholder(
                              color: Colors.green,
                              fallbackHeight: 200,
                              fallbackWidth: 200,
                            ),
                          ),
                        );
                      }).toList(),
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
