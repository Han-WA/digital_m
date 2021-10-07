import 'package:digital_marketing/common/app_bar.dart';
import 'package:digital_marketing/common/drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: AppDrawerWidget(),
      body: Column(
        children: [
          AppBarWidget(),
          SingleChildScrollView(
            child: Column(
              children: [
                Material(
                  elevation: 5,
                  child: Image.asset(
                    "assets/images/main.png",
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
