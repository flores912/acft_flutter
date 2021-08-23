import 'package:acft_flutter/CalculatorPage.dart';
import 'package:acft_flutter/StatisticsPage.dart';
import 'package:acft_flutter/AcftEvents.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  static const List<Widget> _pages = <Widget>[AcftEventsPage(),CalculatorPage(),StatisticsPage()];

  int _selectedIndex = 0; //New
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),
            label: 'Statistics',
          ),
        ],
      ),
      body: _pages.elementAt(_selectedIndex),
    );
  }
}
