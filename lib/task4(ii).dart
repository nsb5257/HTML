// main.dart (or any other main entry point file)

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'task2(iii).dart'; // Import the Event class defined in event.dart

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  // Sample list of events
  final List<Event> events = [
    Event(
      title: 'Hi',
      description: 'Nice weather!!',
      date: DateTime(2023, 7, 18, 4),
    ),
    Event(
      title: 'Bye',
      description: 'Bad weather!!',
      date: DateTime(2023, 7, 18, 4, 05),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Summer-School"),
          ),
          leading: Icon(Icons.menu),
        ),
        body: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            Event event = events[index];

            return ListTile(
              title: Text(event.title),
              selected: false,
              tileColor: Color.fromARGB(255, 134, 235, 217),
              subtitle: Text(event.description),
              trailing: Text('Date: ${event.date.toString()}'),
            );
          },
        ),
      ),
    );
  }
}
