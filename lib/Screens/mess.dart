import 'package:flutter/material.dart';
import 'package:mess/Resources/theme.dart';
import 'package:mess/Screens/breakfast.dart';
import 'package:mess/Screens/dinner.dart';
import 'package:mess/Screens/lunch.dart';
import 'package:mess/Screens/profile.dart';
import 'package:table_calendar/table_calendar.dart';

class Mess extends StatefulWidget {
  const Mess({Key? key}) : super(key: key);

  @override
  State<Mess> createState() => _MessState();
}

class _MessState extends State<Mess> {
  //final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  DateTime now = DateTime.now();

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
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          TableCalendar(
            headerVisible: false,
            rowHeight: 50.0,
            firstDay: DateTime.now(),
            lastDay: DateTime.utc(now.year, now.month + 1, 0),
            focusedDay: DateTime.now(),
            calendarFormat: CalendarFormat.month,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
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

bool isSameDay(DateTime? selectedDay, DateTime dayToCheck) {
  return selectedDay?.year == dayToCheck.year &&
      selectedDay?.month == dayToCheck.month &&
      selectedDay?.day == dayToCheck.day;
}
