import 'package:acft_flutter/acft_events.dart';
import 'package:acft_flutter/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        primaryColor: Colors.amber,
        brightness: Brightness.dark,
        splashColor: Colors.amber,
        primaryColorDark: Colors.amber,
        indicatorColor: Colors.amber,
        highlightColor: Colors.amber,
        accentColor: Colors.amberAccent,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.amber,
            backgroundColor: Colors.black12,
            showUnselectedLabels: false,
            selectedLabelStyle: TextStyle(
            )),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        cardTheme: CardTheme(
          clipBehavior: Clip.antiAlias,
          shape: BeveledRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        textSelectionTheme:
            TextSelectionThemeData(selectionColor: Colors.amber),
      ),
      home: Home(),
    );
  }
}
