import 'package:acft_flutter/models/event.dart';
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

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Slider(
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
    );
  }
}
