import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/features/header/HeaderView.dart';

class EventView extends StatefulWidget {
  const EventView({super.key});

  @override
  State<EventView> createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  final TextEditingController _eventcontroller = TextEditingController();
  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Events - Kaira Group Platform',
            //  textAlign: TextAlign.right,
          ),
        ),
        backgroundColor: sPlash2,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: HeaderView(),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: selectedDay,
            firstDay: DateTime(1990),
            lastDay: DateTime(2050),
            calendarFormat: format,
            onFormatChanged: (CalendarFormat _format) {
              setState(() {
                format = _format;
              });
            },
            startingDayOfWeek: StartingDayOfWeek.sunday,
            daysOfWeekVisible: true,
            onDaySelected: (DateTime selectDay, DateTime focusDay) {
              setState(() {
                selectedDay = selectDay;
                focusedDay = focusDay;
              });
              print('focusedDay');
            },
            selectedDayPredicate: (DateTime date) {
              return isSameDay(selectedDay, date);
            },
            eventLoader: _getEventsfromDay,
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                  color: sPlash2,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
              selectedTextStyle: TextStyle(color: Colors.white),
              todayDecoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 94, 69),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
              defaultDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5)),
              weekendDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5)),
            ),
            headerStyle: HeaderStyle(
                formatButtonVisible: true,
                titleCentered: false,
                formatButtonDecoration: BoxDecoration(
                    color: sPlash2, borderRadius: BorderRadius.circular(20)),
                formatButtonTextStyle: TextStyle(color: Colors.white)),
          ),
          ..._getEventsfromDay(selectedDay).map((Event event) => ListTile(
                //     trailing: Text(event.title),
                title: Text(
                  event.title,
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: sPlash2,
          onPressed: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text('Add Event'),
                    content: TextFormField(
                      controller: _eventcontroller,
                    ),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Cancle')),
                      TextButton(
                          onPressed: () {
                            if (_eventcontroller.text.isEmpty) {
                              // Navigator.pop(context);
                              // return;
                            } else {
                              if (selectedEvents[selectedDay] != null) {
                                selectedEvents[selectedDay]
                                    ?.add(Event(title: _eventcontroller.text));
                              } else {
                                selectedEvents[selectedDay] = [
                                  Event(title: _eventcontroller.text)
                                ];
                              }
                            }
                            Navigator.pop(context);
                            _eventcontroller.clear();
                            setState(() {});
                            return;
                          },
                          child: Text('Ok')),
                    ],
                  )),
          label: Text('Add Events')),
    );
  }
}

class Event {
  final String title;
  Event({required this.title});
  String toString() => this.title;
}
