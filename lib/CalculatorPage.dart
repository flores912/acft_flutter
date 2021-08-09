import 'package:acft_flutter/models/event.dart';
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
    return Scaffold(body: EventCalculatorSlider(event: Event('MDL',
        'The MDL event represents movements required to safely and effectively lift heavy loads from the ground, jump, bound and tolerate landing. It requires well-conditioned back and leg muscles and helps Soldiers to avoid upper and lower back injuries caused by moving long distances under heavy load.',
        '0fLRZnSBQSc',
        '60 and 100 point scores: 140 pounds and 340 pounds',
        'Muscular strength, balance and flexibility',
        '60-pound hex bar and plates',
        'assets/deadlift_acft.svg',
        80,
        340),),);
  }
}
