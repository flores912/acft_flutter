import 'package:acft_flutter/models/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
        title: Text('ACFT'),
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
                      event: Event(
                          'MDl',
                          'desc.',
                          'tips',
                          'technique',
                          '0fLRZnSBQSc',
                          '60 and 100 point scores: 140 pounds and 340 pounds',
                          'Muscular strength, balance and flexibility',
                          '60-pound hex bar and plates'),
                    ),
                    EventCard(
                      event: Event(
                          'MDl',
                          'desc.',
                          'tips',
                          'technique',
                          '0fLRZnSBQSc',
                          '60 and 100 point scores: 140 pounds and 340 pounds',
                          'Muscular strength, balance and flexibility',
                          '60-pound hex bar and plates'),
                    ),
                    EventCard(
                      event: Event(
                          'MDl',
                          'desc.',
                          'tips',
                          'technique',
                          '0fLRZnSBQSc',
                          '60 and 100 point scores: 140 pounds and 340 pounds',
                          'Muscular strength, balance and flexibility',
                          '60-pound hex bar and plates'),
                    ),
                  ]),
                ),
                Expanded(
                  child: Column(children: [
                    EventCard(
                      event: Event(
                          'MDl',
                          'desc.',
                          'tips',
                          'technique',
                          '0fLRZnSBQSc',
                          '60 and 100 point scores: 140 pounds and 340 pounds',
                          'Muscular strength, balance and flexibility',
                          '60-pound hex bar and plates'),
                    ),
                    EventCard(
                      event: Event(
                          'MDl',
                          'desc.',
                          'tips',
                          'technique',
                          '0fLRZnSBQSc',
                          '60 and 100 point scores: 140 pounds and 340 pounds',
                          'Muscular strength, balance and flexibility',
                          '60-pound hex bar and plates'),
                    ),
                    EventCard(
                      event: Event(
                          'MDl',
                          'desc.',
                          'tips',
                          'technique',
                          '0fLRZnSBQSc',
                          '60 and 100 point scores: 140 pounds and 340 pounds',
                          'Muscular strength, balance and flexibility',
                          '60-pound hex bar and plates'),
                    ),                  ]),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Alternate Events',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Row(children: [
              Expanded(
                child:EventCard(
                  event: Event(
                      'MDl',
                      'desc.',
                      'tips',
                      'technique',
                      '0fLRZnSBQSc',
                      '60 and 100 point scores: 140 pounds and 340 pounds',
                      'Muscular strength, balance and flexibility',
                      '60-pound hex bar and plates'),
                ),
              ),
              Expanded(
                child:EventCard(
                  event: Event(
                      'MDl',
                      'desc.',
                      'tips',
                      'technique',
                      '0fLRZnSBQSc',
                      '60 and 100 point scores: 140 pounds and 340 pounds',
                      'Muscular strength, balance and flexibility',
                      '60-pound hex bar and plates'),
                ),
              ),
              Expanded(
                child: EventCard(
                  event: Event(
                      'MDl',
                      'desc.',
                      'tips',
                      'technique',
                      '0fLRZnSBQSc',
                      '60 and 100 point scores: 140 pounds and 340 pounds',
                      'Muscular strength, balance and flexibility',
                      '60-pound hex bar and plates'),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
