import 'package:flutter/material.dart';
import 'package:my_hyundai/screens/bottom_navigation.dart';
import 'package:my_hyundai/screens/home.dart';
import 'package:my_hyundai/screens/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Hyundai',
      home: StartScreen(),
    );
  }
}
