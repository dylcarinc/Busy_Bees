import 'package:flutter/material.dart';
import 'package:gtk_flutter/objects/events.dart';
import 'package:gtk_flutter/upcoming_events_list.dart';

class UpcomingEventsPage extends StatefulWidget{
  UpcomingEventsPage({required this.upcomingEventsList});

  UpcomingEventsList upcomingEventsList;

  

  @override
  State<UpcomingEventsPage> createState() => _UpcomingEventsPageState();
}

class _UpcomingEventsPageState extends State<UpcomingEventsPage> {
  
  
  @override
  Widget build(BuildContext context) {
    List<Events> upcomingEventsList = widget.upcomingEventsList.getUpcomingEvents();
    return Scaffold(
       appBar: AppBar(
          title: const Text('Upcoming Events'),
        ),
         body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          children: upcomingEventsList.map((item) {
            return EventListItem(
              event: item,
              
            );
          }).toList(),
        ),
    );
  }

}