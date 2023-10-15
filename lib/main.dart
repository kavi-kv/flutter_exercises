import 'package:flutter/material.dart';
import 'package:flutter_exercise/compoenents/food_menu.dart';
import 'package:flutter_exercise/compoenents/nav_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodPage(),
    );
  }
}

