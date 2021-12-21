import 'package:acft_flutter/models/Event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventCalculatorSlider extends StatefulWidget {
  final Event event;
  const EventCalculatorSlider({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  _EventCalculatorSliderState createState() => _EventCalculatorSliderState();
}

class _EventCalculatorSliderState extends State<EventCalculatorSlider> {
  late Event _event;
  late double _maxValue;
  late double _minValue;
  late double _currentValue;

  @override
  void initState() {
    _event = widget.event;
    _maxValue = _event.maxValue.toDouble();
    _minValue = _event.minValue.toDouble();
    _currentValue = _event.minValue.toDouble();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.amber)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(_event.eventImage,
                          alignment: Alignment.center,
                          color: Colors.amber,
                          height: 56),
                    ),
                  ),
                ),
                Text(_event.title),
                //todo:create a GETTER for score on event class
                //  THIS WILL SEPARATE LOGIC FROM UI.
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //limits decimal places
                      Text(_currentValue
                              .toStringAsFixed(_event.decimalPlaces)
                              .toString() +
                          ' ' +
                          _event.unitOfMeasurement +
                          ' / '),
                      Text(_event.getScore(_currentValue).toString() +
                          ' points'),
                    ],
                  ),
                ),
                Slider(
                  value: _currentValue,
                  max: _maxValue,
                  min: _minValue,
                  onChanged: (double newValue) {
                    setState(() {
                      _currentValue = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
