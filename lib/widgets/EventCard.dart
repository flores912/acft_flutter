import 'package:acft_flutter/models/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

//todo: fix device orientation when dismissed on full screen youtube video
class EventCard extends StatefulWidget {
  final Event event;

  const EventCard({Key? key, required this.event}) : super(key: key);
  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  late Event event;

  late YoutubePlayerController _controller;
  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void initState() {
    event = widget.event;
    _controller = YoutubePlayerController(
      initialVideoId: event.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        hideControls: false,
        useHybridComposition: true,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return SingleChildScrollView(
                    child: Wrap(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: YoutubePlayer(
                                controller: _controller,
                                showVideoProgressIndicator: true,
                                progressIndicatorColor: Colors.amber,
                                progressColors: ProgressBarColors(
                                  playedColor: Colors.amber,
                                  handleColor: Colors.amberAccent,
                                ),
                                onReady: () {
                                  _controller.addListener(listener);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                event.title,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                event.description,
                                textAlign: TextAlign.center,
                              ),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                      Icons.run_circle_outlined,
                                                      color: Colors.amber,
                                                    ),
                                                    Text(
                                                      'Fitness Components',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      event.fitnessComponents,
                                                      textAlign:
                                                          TextAlign.center,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                      Icons.fitness_center,
                                                      color: Colors.amber,
                                                    ),
                                                    Text(
                                                      'Standard Equipment',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      event.standardEquipment,
                                                      textAlign:
                                                          TextAlign.center,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                      Icons.done,
                                                      color: Colors.amber,
                                                    ),
                                                    Text(
                                                      'Field Test',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      event.fieldTest,
                                                      textAlign:
                                                          TextAlign.center,
                                                    )
                                                  ],
                                                ),
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
                          ],
                        ),
                      ],
                    ),
                  );
                })
            .whenComplete(() => _controller
                .reset()); //todo: dispose of controller the right way.
      },
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        event.eventImage,
                        alignment: Alignment.center,
                        color: Colors.amber,
                        height: 100,
                      ),
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: Center(
                          child: Text(
                        event.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                             fontWeight: FontWeight.normal),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
