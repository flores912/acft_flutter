import 'package:acft_flutter/models/Event.dart';
import 'package:flutter/material.dart';

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
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //todo:create a GETTER for score on event class
          //  THIS WILL SEPARATE LOGIC FROM UI.
          Text(_event.calculateMDLScore(_currentValue.toInt()).toString() +
              ' points'),
          Text(_currentValue.toInt().toString() + ' lbs'),
          Slider(
            value: _currentValue,
            max: _maxValue,
            min: _minValue,
            onChanged: (double newValue) {
              setState(() {
                setState(() {
                  _currentValue = newValue;
                });
              });
            },
          ),
        ],
      ),
    );
  }
}
