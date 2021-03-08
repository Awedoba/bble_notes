import 'package:bble_notes/screens/home_screen.dart';
import 'package:bble_notes/utilities/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bble',
      theme: ThemeData(
        primaryColor: primary,
        // primarySwatch: Colors.orange[300],
        accentColor: Color(0xFFFEF9EB),
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
