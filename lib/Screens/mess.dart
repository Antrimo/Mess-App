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
  CalendarFormat _calendarFormat = CalendarFormat.month;
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
      ),
      body: Column(
        children: [
          TableCalendar(
            weekNumbersVisible: false,
            rowHeight: 40.0,
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
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              // No need to call `setState()` here
              _focusedDay = focusedDay;
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
