import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:sepran_clone/Screens/hutang_screen/hutang_screen.dart';

import '../Screens/home_screen/home_screen.dart';
import '../Screens/rekap_screen/rekap_screen.dart';
import '../Screens/setting_screen/setting_screen.dart';
import '../Screens/transaction_screen/transaction_screen.dart';

class BottomMenu {
  String title;
  IconData icon;

  BottomMenu({
    required this.title,
    required this.icon,
  });
}

class Menus {
  // List<BottomMenu> items = [
  //   BottomMenu(title: 'Data Harian', icon: FontAwesomeIcons.wallet),
  //   BottomMenu(title: "Transaksi", icon: FontAwesomeIcons.plus),
  //   BottomMenu(title: 'Hutang', icon: FontAwesomeIcons.moneyBill),
  //   BottomMenu(title: 'Rekap', icon: FontAwesomeIcons.chartSimple),
  //   BottomMenu(title: 'Setting', icon: Icons.settings),
  // ];

  // List<Widget> allScreen = <Widget>[
  //   HomeScreen(),
  //   TransactionScreen(),
  //   RekapScreen(),
  //   SettingScreen(),
  // ];

  // List<BottomNavigationBarItem> getBottomMenu(List<BottomMenu> tabs) {
  //   return tabs
  //       .map(
  //         (item) => BottomNavigationBarItem(
  //           icon: Icon(item.icon),
  //           label: item.title,
  //         ),
  //       )
  //       .toList();
  // }

  // -------------------------- new
  List<Widget> bottomScreenMenu() {
    return [
      HomeScreen(),
      HutangScreen(),
      TransactionScreen(),
      RekapScreen(),
      SettingScreen(),
    ];
  }

  //
  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.wallet),
        title: "Beranda",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.moneyBill),
        title: "Hutang",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.plus, color: Colors.white),
        title: "Transaksi",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.chartSimple),
        title: "Rekap",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.gear),
        title: "Setting",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
