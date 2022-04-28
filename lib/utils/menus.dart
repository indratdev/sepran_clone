import 'package:flutter/material.dart';
import 'package:sepran_clone/Screens/home_screen/home_screen.dart';
import 'package:sepran_clone/Screens/hutang_screen/hutang_screen.dart';
import 'package:sepran_clone/Screens/rekap_screen/rekap_screen.dart';
import 'package:sepran_clone/Screens/setting_screen/setting_screen.dart';

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

  List<Widget> allScreen = <Widget>[
    HomeScreen(),
    HutangScreen(),
    RekapScreen(),
    SettingScreen(),
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
