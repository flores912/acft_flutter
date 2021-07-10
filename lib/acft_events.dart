import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.all(1.0),
              child: Text(
                'Main Events',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 /2.3,
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
              padding: const EdgeInsets.fromLTRB(8,0,8,16),
              child: Text(
                'Alternate Events',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
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
                  Container(color:Colors.red,height:200,child: Center(child: Text('Video')),),
                  Text('Title',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('description'),
                  Container(child: Text('fitness categories'),),
                  ElevatedButton(onPressed: (){
                  }, child: Text('Tips'))
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
