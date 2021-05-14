import 'package:desafionavi/fourth/fourth_screen.dart';
import 'package:desafionavi/home/homeView.dart';
import 'package:desafionavi/second/second_screen.dart';
import 'package:desafionavi/third/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppDesafio());
}

class AppDesafio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "second": (context) => SecondScreen(),
        'third': (context) => ThirdScreen(),
        'fourth': (context) => FourthScreen(),
      },
      title: 'Desafio Navi',
    );
  }
}
