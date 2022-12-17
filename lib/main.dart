import 'package:coffee_ordering/colors.dart';
import 'package:coffee_ordering/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
