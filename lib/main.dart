import 'package:bihar_tour/HomePage.dart';
import 'package:bihar_tour/bmi_calculator.dart';
import 'package:bihar_tour/patna_pageRoutes.dart';
import 'package:bihar_tour/splash.dart';
import 'package:flutter/material.dart';

import 'Patna.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Patna(),
      /*initialRoute: Approutes.splash_page,
      routes: Approutes.getRouteMap(),*/
    );
  }
}
