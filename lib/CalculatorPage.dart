import 'package:acft_flutter/models/Event.dart';
import 'package:acft_flutter/res/Events.dart';
import 'package:acft_flutter/widgets/EventCalculatorSlider.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          EventCalculatorSlider(event: Events.deadlift),
          EventCalculatorSlider(event: Events.powerThrow),
          EventCalculatorSlider(event: Events.pushup),
        ],
      )),
    );
  }
}
