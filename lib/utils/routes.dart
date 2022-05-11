import 'package:flutter/material.dart';
import 'package:sepran_clone/Screens/home_screen/home_screen.dart';
import 'package:sepran_clone/Screens/hutang_screen/hutang_screen.dart';
import 'package:sepran_clone/Screens/rekap_screen/rekap_screen.dart';
import 'package:sepran_clone/Screens/sepranclone.dart';
import 'package:sepran_clone/Screens/setting_screen/backup_data/backupdata_screen.dart';
import 'package:sepran_clone/Screens/setting_screen/setting_screen.dart';
import 'package:sepran_clone/Screens/setting_screen/tema_warna/temawarna_screen.dart';
import 'package:sepran_clone/Screens/splash_screen.dart';

import '../Screens/home_screen/transaksi_screen/transaksi_screen.dart';

class Routes {
  Map<String, WidgetBuilder> getRoutes = {
    '/': (_) => SepranClone(),
    '/splash': (_) => SplashScreen(),
    '/home': (_) => HomeScreen(),
    // '/home/transaksi': (_) => TransaksiScreen(type: 'Pengeluaran'),
    '/hutang': (_) => HutangScreen(),
    '/rekap': (_) => RekapScreen(),
    '/setting': (_) => SettingScreen(),
    '/setting/backupData': (_) => BackupDataScreen(),
    '/setting/warnaTema': (_) => TemaWarnaSceen(),
  };
}
