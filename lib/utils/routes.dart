import 'package:flutter/material.dart';
import 'package:sepran_clone/Screens/home_screen/home_screen.dart';
import 'package:sepran_clone/Screens/hutang_screen/hutang_screen.dart';
import 'package:sepran_clone/Screens/rekap_screen/rekap_screen.dart';
import 'package:sepran_clone/Screens/setting_screen/setting_screen.dart';
import 'package:sepran_clone/Screens/splash_screen.dart';

class Routes {
  Map<String, WidgetBuilder> getRoutes = {
    '/': (_) => HomeScreen(),
    '/splash': (_) => SplashScreen(),
    '/hutang': (_) => HutangScreen(),
    '/rekap': (_) => RekapScreen(),
    '/setting': (_) => SettingScreen(),
  };
}
