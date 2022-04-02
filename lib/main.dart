import 'package:flutter/material.dart';
import 'package:weather_simple/screens/location_screen.dart';


// import 'screens/weather_forecast_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocationScreen(),
    );
  }
}