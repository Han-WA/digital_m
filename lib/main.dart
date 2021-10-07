import 'package:digital_marketing/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(DigitalM());

class DigitalM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      theme: ThemeData(
        primaryColor: Color(0xFF0343A0),
      ),
      home: HomeScreen(),
    );
  }
}
