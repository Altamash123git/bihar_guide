import 'package:bihar_tour/bmi_calculator.dart';
import 'package:bihar_tour/patna_pageRoutes.dart';
import 'package:bihar_tour/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: bmi(),
      /*initialRoute: Approutes.splash_page,
      routes: Approutes.getRouteMap(),*/
    );
  }
}
