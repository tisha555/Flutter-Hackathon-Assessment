import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(WeatherlyApp());
}

class WeatherlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weatherly',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
