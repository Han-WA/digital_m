import 'package:flutter/material.dart';
import 'menu_item.dart';

class AppDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  final name = "Tin Yadanar";
  final id = "BD - 12345";
  final urlImage =
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          padding: padding,
          children: [
            buildHeader(urlImage: urlImage, name: name, id: id),
            buildMenuItem(
              text: "Cart",
              icon: Icons.shopping_bag,
              onClicked: () => selectedItem(0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: "Order",
              icon: Icons.playlist_play_rounded,
              onClicked: () => selectedItem(1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: "Stock",
              icon: Icons.manage_accounts,
              onClicked: () => selectedItem(2),
            ),
            const SizedBox(height: 20),
            Divider(color: Colors.black87),
            const SizedBox(height: 20),
            buildMenuItem(
              text: "FAQs",
              icon: Icons.message,
              onClicked: () => selectedItem(3),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: "About US & Terms",
              icon: Icons.book,
              onClicked: () => selectedItem(4),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: "Log Out",
              icon: Icons.info,
              onClicked: () => selectedItem(5),
            ),
          ],
        ),
      ),
    );
  }
}
