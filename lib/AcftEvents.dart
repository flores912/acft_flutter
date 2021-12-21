import 'package:acft_flutter/models/Event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'res/Events.dart';

import 'widgets/EventCard.dart';
//TODO: MAKE LAYOUT RESPONSIVE!!!!!

class AcftEventsPage extends StatefulWidget {
  const AcftEventsPage({Key? key}) : super(key: key);

  @override
  _AcftEventsPageState createState() => _AcftEventsPageState();
}

class _AcftEventsPageState extends State<AcftEventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(
          'ACFT',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Main Events',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(children: [
                    EventCard(
                      event: Events.deadlift,
                    ),
                    EventCard(event: Events.powerThrow),
                    EventCard(event: Events.pushup),
                  ]),
                ),
                Expanded(
                  child: Column(children: [
                    EventCard(
                      event: Events.dragCarry,
                    ),
                    EventCard(
                      event: Events
                          .legTuckOrPlank, //PLK : min=<105 secs max:260 secs
                    ),
                    EventCard(
                      event: Events.run,
                    ),
                  ]),
                ),
              ],
            ),
            //ALTERNATE EVENTS here
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Alternate Events',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            EventCard(event: Events.row),
            EventCard(
              event: Events.bike,
            ),
            EventCard(
              event: Events.swim,
            ),
          ],
        ),
      ),
    );
  }
}
