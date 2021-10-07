import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQs"),
      ),
      body: Text(
        "All the questions and answer",
      ),
    );
  }
}
