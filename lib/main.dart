import 'package:flutter/material.dart';
import 'package:latihankuis/home_page.dart';
import 'package:latihankuis/tourism_place.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(places: tourismPlaceList,),
    );
  }
}
