import 'package:flutter/material.dart';

class BottomMenu {
  String title;
  IconData icon;

  BottomMenu({
    required this.title,
    required this.icon,
  });
}

class Menus {
  List<BottomMenu> items = [
    BottomMenu(title: 'Data Harian', icon: Icons.home),
    BottomMenu(title: 'Hutang', icon: Icons.money),
    BottomMenu(title: 'Rekap', icon: Icons.book),
    BottomMenu(title: 'Setting', icon: Icons.settings),
  ];

  List<BottomNavigationBarItem> getBottomMenu(List<BottomMenu> tabs) {
    return tabs
        .map(
          (item) => BottomNavigationBarItem(
            icon: Icon(item.icon),
            label: item.title,
          ),
        )
        .toList();
  }
}
