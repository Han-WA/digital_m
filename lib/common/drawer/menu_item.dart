import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drawer_info/faqs.dart';

Widget buildMenuItem({
  String? text,
  IconData? icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.black;
  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(
      text!,
      style: TextStyle(color: color),
    ),
    onTap: onClicked,
  );
}

void selectedItem(int index) {
  switch (index) {
    case 0:
      Get.to(() => FaqScreen()); // CartScreen
      break;
    case 1:
      Get.to(() => FaqScreen()); // OrderScreen
      break;
    case 2:
      Get.to(() => FaqScreen()); // StockScreen
      break;
    case 3:
      Get.to(() => FaqScreen());
      break;
    case 4:
      Get.to(() => FaqScreen()); // TermScreen
      break;
    case 5:
      Get.to(() => FaqScreen()); // AboutUSScreen
      break;
  }
}

Widget buildHeader({
  required String urlImage,
  required String name,
  required String id,
}) =>
    InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: Row(
          children: [
            CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  id,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
