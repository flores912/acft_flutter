import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            //Todo:fix aspect ratios for grids
            GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 2.5),
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0),
                children: [
                  EventCard(),
                  EventCard(),
                  EventCard(),
                  EventCard(),
                  EventCard(),
                  EventCard(),
                ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
              child: Text(
                'Alternate Events',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.5),
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [EventCard(), EventCard(), EventCard()]),
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatefulWidget {
  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.red,
                      height: 200,
                      child: Center(child: Text('Video')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Title',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('description'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'fitness components',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Description',
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'standard equipment',
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Description',
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'field test',
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Description',
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text('Proper Technique'),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            color: Colors.red,
                                            height: 100,
                                            child: Text('image'),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Text('Tips')),
                  )
                ],
              );
            });
      },
      child: Wrap(
        children: [
          Card(
            child: Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.amber,
                ),
                Container(
                  height: 50,
                  child: ListTile(
                    title: Center(child: Text('Event')),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
